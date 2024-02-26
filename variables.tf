variable "token" {
  description = "The Linode API token"
  type        = string
}

variable "instance_password" {
  description = "password for the instance"
  type        = string
}

variable "public_cidr_blocks" {
  description = "The public CIDR blocks for the VPC"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "backend_cidr_blocks" {
  description = "The backend CIDR blocks for the VPC"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "nat_ip" {
  description = "The NAT IP address in public subnet"
  type        = string
  default     = "10.0.1.2"
}
