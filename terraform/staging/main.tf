module "common" {
  source      = "../modules/common"
  environment = "${var.environment}"
}

variable "environment" {
  default = "staging"
}

output "environment" {
  value = "${module.common.message}"
}