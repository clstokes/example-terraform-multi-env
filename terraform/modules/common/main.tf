variable "environment" {
}

output "message" {
  value = "Common config for ${var.environment}."
}

resource "null_resource" "debug" {
  provisioner "local-exec" {
    command = "pwd && find ."
  }
}