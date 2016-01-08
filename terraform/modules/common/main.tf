variable "environment" {
}

output "message" {
  value = "Common config for ${var.environment}."
}
