module "common" {
  source      = "../modules/common"
  environment = "${var.environment}"
}

variable "environment" {
  default = "sandbox"
}

output "environment" {
  value = "${module.common.message}"
}