module "common" {
  source      = "../modules/common"
  environment = "${var.environment}"
}

variable "environment" {
  default = "production"
}

output "environment" {
  value = "${module.common.message}"
}
