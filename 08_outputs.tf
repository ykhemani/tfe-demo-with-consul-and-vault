output aws_instance {
  value = aws_instance.aws_instance_from_consul_data.public_ip
}

output app3-api_token {
  value = data.vault_generic_secret.app3_api_token.data["api-token"]
}
