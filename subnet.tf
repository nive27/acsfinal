resource "aws_subnet" "public1" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.20.0.0/16"
    availability_zone = "us-east-1b"
    map_public_ip_on_launch = "true"
    
    tags = {
      Name = "public_1b"
    }
}

resource "aws_subnet" "public2" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.20.1.0/16"
    availability_zone = "us-east-1c"
    
    tags = {
      Name = "public_1c"
    }
}

resource "aws_subnet" "public3" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.20.2.0/16"
    availability_zone = "us-east-1d"
    
    tags = {
      Name = "public_1d"
    }
}

resource "aws_subnet" "private1" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.100.0.0/16"
    availability_zone = "us-east-1b"
    
    tags = {
      Name = "dev-subnet"
    }
}

resource "aws_subnet" "private2" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.200.0.0/16"
  availability_zone = "us-east-1c"
  
  tags = {
    Name = "staging-subnet"
  }
}

resource "aws_subnet" "private3" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.250/0.0/16"
  availability_zone = "us-east-1d"
  
  tags = {
    Name = "prod-subnet"
  }
}

