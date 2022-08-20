resource "aws_autoscaling_group" "asg" {
    name = "VM1dev"
    max_size = 4
    min_size = 1
    desired_capacity = 2
    availability_zones = "us-east-1b"
    launch_configration = aws_launch_configuration.ubuntu
    target_group_arns = 
}

