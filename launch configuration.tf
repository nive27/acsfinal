resource "aws_launch_configuration" "ubuntu" {
    name = "asmfinal-launch-config"
    image_id = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    key_name = "vockey"
}

