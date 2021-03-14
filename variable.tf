variable "instance_enabled" {
    description = "Used to decide if istance will be created or not"
    type = bool
    default = true
}
variable "instace_count" {
    description = "Count of total EC2 instances to be created "
    type =  number
    default = 1   
}
variable "instance_type" {
    description = "Type of instance eg. t2-micro, t2.medium etc"
    type = string
    default = "t2.micro" 
}
variable "availability_zone" {
  description = "Which zone you want to create instrace in , eg us-east-1a,b,or c etc"
  type = string
  default = "us-east-2a"
}
variable "subnet_availability_zone" {
  description = "Which zone you want to create instrace in , eg us-east-1a,b,or c etc"
  type = string
  default = "us-east-2a"
  
}
variable "associate_public_ip_address" {
    description = "If true public IP will be associate  with instance"
    type = bool
    default = true
}
variable "environment" {
    description = "application environment , prod, dev, test etcc"
    type = string
    default = "dev"
}
variable "applcation" {
    description = "Application name hosted on the server , master , worker etc"
    type = string
    default = "master" 
}
variable "aws_security_group_self_addition" {
    description = "If true new SG will be created else existing will used"
    type = bool
    default = false
}
variable "aws_security_group_create" {
    description = "If true new security group will be created else existing one will used "
    type = bool
    default = true  
}
variable "aws_security_group_existing" {
    description = "Pass the existing SG ID "
    type = string
    default = "sg-8facb8fd"
  
}
