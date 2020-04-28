provider "consul" {
  # address         = var.consul_address
  # scheme          = var.consul_scheme
  # datacenter      = var.consul_dc
}

provider "vault" {
  address           = var.vault_addr
  skip_tls_verify   = var.vault_skip_tls_verify
  #token            = var.vault_token
  auth_login {
    path            = var.vault_auth_path

    parameters      = {
      role_id       = var.vault_role_id
      secret_id     = var.vault_secret_id
    }
  }
}

data "vault_aws_access_credentials" "creds" {
  backend           = var.vault_aws_backend
  role              = var.vault_aws_role
}

provider "aws" {
  region            = var.aws_region
  access_key        = data.vault_aws_access_credentials.creds.access_key
  secret_key        = data.vault_aws_access_credentials.creds.secret_key
}
