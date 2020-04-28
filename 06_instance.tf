################################################################################
# Provision AWS Instance using Consul and Remote State data
resource "aws_instance" "aws_instance_from_consul_data" {
  #ami                   = data.aws_ami.hashistack.id
  ami                    = data.consul_keys.aws_instance.var.aws_ami
  instance_type          = data.consul_keys.aws_instance.var.instance_type
  #key_name              = data.consul_keys.aws_instance.var.ssh_key
  subnet_id              = data.consul_keys.aws_instance.var.subnet_id
  vpc_security_group_ids = [data.consul_keys.aws_instance.var.security_group_id]

  key_name               = data.terraform_remote_state.ssh_key.outputs.ssh_key_name

  root_block_device {
    volume_type          = data.consul_keys.aws_instance.var.root_volume_type
    volume_size          = data.consul_keys.aws_instance.var.root_volume_size
  }

  tags = {
    Name                 = "${var.owner}-${var.app_name}"
    Owner                = var.owner
  }
}
