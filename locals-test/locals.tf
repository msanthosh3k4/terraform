locals {
  instance_type = var.env == "prod" ? "t2.micro" : "t3.micro"
}

locals {
  tags_name = "${var.project}-${var.component}-${var.tag_env}"
}

variable "env" {
  type        = string
  default     = "dev"
}

variable "tag_env" {
  type        = string
  default     = "dev"
}
variable "project" {
  type        = string
  default     = "expense"
}
variable "component" {
  type        = string
  default     = "frontend"
}