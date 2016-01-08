variable "environment" {
}

output "message" {
  value = "Common config for ${var.environment}."
}

resource "null_resource" "debug2" {
  provisioner "local-exec" {
    command = "pwd && find ."
  }
}
