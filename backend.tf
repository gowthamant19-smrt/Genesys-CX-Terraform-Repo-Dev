# Enable a remote backend before updating objects Terraform already created.
# Without it each pipeline run starts with empty state.
# terraform {
#   backend "s3" {
#     bucket = "your-bucket-name"
#     key    = "genesys-dev/terraform.tfstate"
#     region = "ap-south-1"
#   }
# }
