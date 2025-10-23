variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
}

# variable "security_group" {
#   type        = list(string)
#   default     = ["aws_security_group.allow_tls.id"]
# }

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}

variable "ec2_tags" {
  type = map(string)
  default = {
    Environment = "dev"
    Component   = "backend"
    Project     = "expense"
  }
}


variable "from_port" {
  type        = number
  default     = 22
}

variable "to_port" {
  type        = number
  default     = 22
}

variable "prot_col" {
    type = string
    default = "tcp"
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
    type = list(string)


}

variable "environment" {
  type        = string
  default     = "dev"
}

variable "instances" {
  default = ["mysql","backend","frontend"]
}

variable "zone_id" {
  default = "Z065591046MSP9V4T6B0"
}

variable "domain_name" {
  default = "awsexpense.online"
}

variable "tags_names" { 
  type = map
  default = {
    environment = "dev"
    Project = "expense"
  }
}