provider "aws" {
    region = "us-east-1"
}

#Internet Gateway
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.main.id
    
    tags = {
        Name = "igw"
    }
}

#Nat Gateway
resource "aws_eip" "NAT" {
    depends_on = [aws_internet_gateway.igw]
}
resource "aws_nat_gateway" "NGW" {
    allocation_id = aws_eip.NAT.id
    subnet_id =
    
    tags = {
        Name = "NGW"
    }
   
