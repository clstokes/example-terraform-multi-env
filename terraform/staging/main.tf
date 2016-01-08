module "common" {
  source      = "../modules/common"
  environment = "${var.environment}"
}

variable "environment" {
  default = "staging2"
}

output "environment" {
  value = "${module.common.message}"
}
