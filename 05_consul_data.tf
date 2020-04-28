################################################################################
# retrieve Consul KV data
data "consul_keys" "aws_instance" {
  datacenter = var.consul_dc

  # Subnet ID
  key {
    name    = "subnet_id"
    path    = "cloud/aws/${var.aws_region}/subnet_id/${var.environment}"
  }

  # Security Group ID
  key {
    name    = "security_group_id"
    path    = "cloud/aws/${var.aws_region}/app/${var.app_name}/sg"
  }

  # AWS Machine Image
  key {
    name    = "aws_ami"
    path    = "cloud/aws/${var.aws_region}/ami"
    #default = data.aws_ami.hashistack.id
  }

  # AWS Instance Type
  key {
    name    = "instance_type"
    path    = "cloud/aws/${var.aws_region}/instance_type/${var.environment}"
    #default = var.aws_instance_type
  }

  # Root volume size
  key {
    name    = "root_volume_size"
    path    = "cloud/aws/${var.aws_region}/root_volume_size/${var.environment}"
    #default = var.root_volume_size
  }

  # Root volume type
  key {
    name    = "root_volume_type"
    path    = "cloud/aws/${var.aws_region}/root_volume_type/${var.environment}"
    #default = var.root_volume_size
  }

  # ssh_key
  key {
    name    = "ssh_key"
    path    = "cloud/aws/${var.aws_region}/ssh_key/${var.environment}"
  }

}
