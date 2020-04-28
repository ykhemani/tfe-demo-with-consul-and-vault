################################################################################
# retrieve data from Terraform Remote State

data "terraform_remote_state" "ssh_key" {
  backend = "remote"
  config = {
    hostname     = var.tfe_hostname
    organization = var.tfe_org
    workspaces   = {
      name       = var.ssh_workspace
    }
  }
}
