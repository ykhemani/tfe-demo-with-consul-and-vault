################################################################################
# find the latest hashistack ami in this region
data "aws_ami" "hashistack" {
  most_recent = true

  filter {
    name = "name"
    values = ["hashistack-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "tag:Owner"
    values = [var.owner]
  }

  owners = ["self"]
}
