resource "aws_instance" "terraform" {
  count = 4
  ami           = var.ami_roboshop
  instance_type = var.environment == Prod ? "t3.micro" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.all_traffic.id]

  tags = {
    Name = variable.component[count.index]
    Terraform = True
  }
}

resource "aws_security_group" "all_traffic" {

name = "Allow_all_traffic"

ingress {
    from_port        = var.ingres_from_port
    to_port          = var.ingres_to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr
  }

  egress {
    from_port        = var.egres_from_port
    to_port          = var.egres_to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr
  }
}