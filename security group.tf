#Create Security Group for Bastion Host
resource "aws_security_group" "BastianHost" {
    name = "Bastianhostt"
    description = "Allow SSH access"
    vpc_id = aws_vpc.main.id

    ingress {
        description = "SSH Access"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
   egress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["10.100.3.0/24"]
    }
    
   
}



