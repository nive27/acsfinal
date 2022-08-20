resource "aws_instance" "ec2" {
    ami = "ami-0cff7528ff583bf9a"
    availability_zone = "us-east-1b"
    key_name = "vockey"
    vpc_security_group_ids = ["sg-02773ab285546206c"]
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public1.id
    tags = {
        Name = "Bastion Host"
    }

}

