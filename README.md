# Genesys CX Terraform – Dev

Manages **routing queues and skills only** in the Genesys Cloud dev org.

## Fresh export from dev

```powershell
$env:GENESYSCLOUD_OAUTHCLIENT_ID="<dev-client-id>"
$env:GENESYSCLOUD_OAUTHCLIENT_SECRET="<dev-client-secret>"
$env:GENESYSCLOUD_REGION="ap-south-1"
terraform -chdir=export init
terraform -chdir=export apply -replace="genesyscloud_tf_export.dev_export"
python scripts/export_genesys.py
```

## Deploy

Push a new or changed file under `modules/queues` or `modules/skills`. The pipeline
plans only the changed resources and **fails if the plan would delete or replace
anything**. Deleting a `.tf` file never deletes the object in Genesys.

Required GitHub secrets: `GENESYSCLOUD_OAUTHCLIENT_ID`, `GENESYSCLOUD_OAUTHCLIENT_SECRET`,
`GENESYSCLOUD_REGION`.
