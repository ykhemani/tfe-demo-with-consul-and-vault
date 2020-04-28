resource consul_keys "app_ip" {
  key {
    name  = "instance-id"
    path  =  "cloud/aws/${var.aws_region}/app/${var.app_name}/${var.environment}/instance-id"
    value = aws_instance.aws_instance_from_consul_data.id
  }

  key {
    name  = "public-ip"
    path  =  "cloud/aws/${var.aws_region}/app/${var.app_name}/${var.environment}/public-ip"
    value = aws_instance.aws_instance_from_consul_data.public_ip
  }

  key {
    name  = "private-ip"
    path  =  "cloud/aws/${var.aws_region}/app/${var.app_name}/${var.environment}/private-ip"
    value = aws_instance.aws_instance_from_consul_data.private_ip
  }
}
