variable "environment" {
}

output "message" {
  value = "Common config for ${var.environment} at 11:09."
}

resource "null_resource" "debug" {
  provisioner "local-exec" {
    command = "pwd && tree"
  }
}
