module "common" {
  source      = "../modules/common"
  environment = "${var.environment}"
}

variable "environment" {
}

output "environment" {
  value = "${module.common.message}"
}
