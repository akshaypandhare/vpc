variable "vpc_name" {
  description = "The CIDR block for the VPC."
  default     = "test"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  default     = "192.168.0.0/24"
}

variable "external_subnets" {
  description = "List of external subnets"
  type        = list
  default     = []
}

variable "internal_subnets" {
  description = "List of internal subnets"
  type        = list
  default     = []
}

variable "eks_internal_subnets" {
  description = "List of internal subnets"
  type        = list
  default     = []
}

variable "environment" {
  description = "Environment tag, e.g prod"
  default     = "prod"
}


variable "enable_dns_hostnames" {
  description = "enable enable_dns_hostnames support for vpc"
  default = true
}

variable "enable_dns_support" {
  description = "enable enable_dns_support for vpc"
  default = true
}

variable "subnet_count" {
  description = "It will create same number of subnet in public and private access"
  default = 0
}

variable "public_subnet_tags" {
  description = "set tags on public subnet, specially incase of EKS"
  default = {}
  type = map
}

variable "private_subnet_tags" {
  description = "set tags on private subnet, specially incase of EKS"
  default = {}
  type = map
}

variable "eks_internal_subnets_tags" {
  description = "set tags on private subnet, specially incase of EKS"
  default = {}
  type = map
}
