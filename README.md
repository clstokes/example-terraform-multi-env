# terraform-multi-env

This project demonstrates a project structure that allows
[Atlas](hashicorp.com/atlas.html) and GitHub integration
to properly run Terraform commands from nested environment
directories, while still supporting local command-line
operations.

## Atlas Setup

For each environment configured within Atlas, set
`TF_ATLAS_DIR` to the directory with the environment-specific
configuration - e.g. `terraform/staging`. In the environment's
_Integrations_ page leave **Terraform directory** empty.

## Command-line Operation

From each environment's directory (e.g. terraform/staging):

`terraform remote config -backend=Atlas -backend-config name=$ATLAS_USERNAME/$(basename $(pwd))`

`terraform push -vcs=false -name=$ATLAS_USERNAME/$(basename $(pwd)) ../../`

> The [`empty.tf`](blob/master/terraform/empty.tf) in the terraform directory is **required** to prevent Terraform
from returning an error when pushing from the root directory.
