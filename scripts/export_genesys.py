"""Split export/raw_output into one file per queue / skill under modules/."""
import glob
import os
import re

RESOURCE_MAP = {
    "genesyscloud_routing_queue": "modules/queues",
    "genesyscloud_routing_skill": "modules/skills",
}
KEEP_FILES = {"versions.tf", "data.tf", "variables.tf", "outputs.tf"}
EXPORT_DIR = "export/raw_output"


def sanitize_filename(name):
    # "Customer Support (Tier 1)" -> "customer_support_tier_1"
    clean = re.sub(r"[^a-zA-Z0-9_\-]", "_", name.strip("\"' "))
    return re.sub(r"_+", "_", clean).strip("_").lower()


def extract_blocks(content):
    blocks, current, depth = [], [], 0
    for line in content.splitlines():
        if not current:
            if re.match(r'^\s*resource\s+"[^"]+"\s+"[^"]+"\s*\{', line):
                current = [line]
                depth = line.count("{") - line.count("}")
        else:
            current.append(line)
            depth += line.count("{") - line.count("}")
            if depth <= 0:
                blocks.append("\n".join(current))
                current = []
    return blocks


def clear_module(folder):
    # Fresh export: remove previously exported object files, keep module plumbing.
    for path in glob.glob(f"{folder}/*.tf"):
        if os.path.basename(path) not in KEEP_FILES:
            os.remove(path)


def main():
    for res_type, folder in RESOURCE_MAP.items():
        src = os.path.join(EXPORT_DIR, f"{res_type}.tf")
        if not os.path.exists(src):
            print(f"[!] {src} not found, skipping {folder}")
            continue

        clear_module(folder)
        with open(src, encoding="utf-8") as f:
            blocks = extract_blocks(f.read())

        for block in blocks:
            name = re.search(r'^\s*name\s*=\s*"([^"]+)"', block, re.MULTILINE)
            label = re.search(r'resource\s+"[^"]+"\s+"([^"]+)"', block).group(1)
            out = os.path.join(folder, f"{sanitize_filename(name.group(1) if name else label)}.tf")
            with open(out, "w", encoding="utf-8") as f:
                f.write(block.strip() + "\n")
        print(f"[+] {len(blocks)} {res_type} files written to {folder}")


if __name__ == "__main__":
    main()
