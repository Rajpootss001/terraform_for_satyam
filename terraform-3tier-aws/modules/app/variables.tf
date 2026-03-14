 variable "private_subnets" {
  description = "Private subnet IDs"
  type        = list(string)
}

variable "instance_type" {
  default = "t2.micro"
}
