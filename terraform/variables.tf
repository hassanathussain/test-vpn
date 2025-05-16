variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "us-east-2a"
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default = {
    "Owner"       = "mud"
    "Group"       = "vq"
    "Environment" = "test"
  }
}
