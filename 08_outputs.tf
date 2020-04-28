output aws_instance {
  value = aws_instance.aws_instance_from_consul_data.public_ip
}
