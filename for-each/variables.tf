variable "instances" {
  type        = map
  default     = {
    mysql = "t3.micro"
    backend = "t3.micro"
    frontend = "t3.small"
  }
}

output "instance_info" {
  value       = aws_instance.this
}

variable "zone_id" {
  default = "Z065591046MSP9V4T6B0"
}

variable "domain_name" {
  default = "awsexpense.online"
}