variable "aws_region" {
  default = "ap-south-1"
}

variable "key_name" {
  description = "SSH Key pair name"
  type        = string
}

variable "instance_type" {
  default = "t3.micro"
}

variable "app_name" {
  default = "tech-blog-app"
}

variable "ami_id" {
  default = "ami-0f5ee92e2d63afc18"
}
