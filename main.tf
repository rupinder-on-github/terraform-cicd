locals {
  environment = var.environment
  application = var.applcation
  aws_security_group = var.aws_security_group_create == true ? aws_security_group.ssh.id : var.aws_security_group_existing
}

data "aws_vpc" "selected" {
    default = true
}
data "aws_subnet" "selected" {
    default_for_az = true
    availability_zone = var.subnet_availability_zone
}

resource "aws_instance" "this" {
    count = var.instance_enabled == true ? 2 : 0
    ami = "ami-07a0844029df33d7d"
    subnet_id =   data.aws_subnet.selected.id
    instance_type = var.instance_type
    availability_zone = var.availability_zone
    associate_public_ip_address = var.associate_public_ip_address
    vpc_security_group_ids = aws_security_group.ssh[count.index]
    


}
output "vpc_id" {
     value = data.aws_vpc.selected.id
}
output "instance_id" {
    value = aws_instance.this.*.id 
}
output "Public_ip" {
    value = aws_instance.this.*.public_ip
  
}
resource "aws_security_group" "ssh" {
    count = var.aws_security_group_create == true ? 1 : 0
    vpc_id = data.aws_vpc.selected.id
    ingress {
       description = "TLS from VPC"
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
     }

  tags = {
    Name = "allow_tls"
  }
}
