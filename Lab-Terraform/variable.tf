variable "aws_region" {
  type        = string
  description = "value"
  default     = "ea-east-1"
}

variable "instance_ami" {
  type        = string
  description = "value"
  default     = "amiidpegar na aws"
}

variable "instance_type" {
  type        = string
  description = "value"
  default     = "t2.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    project = " lab teste terraform "
  }
}