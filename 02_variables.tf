# consul variables
variable consul_address {
  type        = string
  description = "Consul Address e.g. consul.service.consul:8501"
  default     = "http://127.0.0.1:8500"
}

variable consul_dc {
  type        = string
  description = "Consul datacenter"
}

# vault variables
variable vault_addr {
  type          = string
  description   = "Vault Cluster Address."
}

variable vault_skip_tls_verify {
  type          = bool
  description   = "Set this to true to disable verification of the Vault server's TLS certificate."
  default       = false
}

variable vault_role_id {
  type          = string
  description   = "Role ID for AppRole auth"
}

variable vault_secret_id {
  type          = string
  description   = "Secret ID for AppRole auth"
}

variable vault_auth_path {
  type          = string
  description   = "The login path of the auth backend."
  default       = "auth/approle/login"
}

variable vault_aws_backend {
  type          = string
  description   = "The path to the AWS secret backend to read credentials from."
  default       = "aws"
}

variable vault_aws_role {
  type          = string
  description   = "The name of the AWS secret backend role to read credentials from."
}

# aws variables
variable aws_region {
  type        = string
  description = "AWS region"
  default     = "us-west-2"
}

variable owner {
  type        = string
  description = "Label to identify owner, will be used for tagging resources that are provisioned."
}

variable ami_id {
  type        = string
  description = "Specify AMI ID. Overrides filter."
  default     = ""
}

variable aws_instance_type {
  type        = string
  description = "AWS Instance Type"
  default     = "t2.micro"
}

variable root_volume_size {
  type        = string
  description = "Root volume size (in GB)."
  default     = "25"
}

variable root_volume_type {
  type        = string
  description = "Root volume type."
  default     = "gp2"
}

variable app_name {
  type        = string
  description = "The name of the application we are provisioning."
}

variable environment {
  type        = string
  description = "Environment in which we are provisioning: dev, qa, stg, prod."
}

# tfe related variables

variable tfe_hostname {
  type        = string
  description = "Terraform Enterprise endpoint."
  default     = "https://app.terraform.io"
}

variable tfe_org {
  type        = string
  description = "Name of organization where ssh_workspace exists."
}

variable ssh_workspace {
  type        = string
  description = "Name of workspace where ssh key was created."
}
