
# vpc configuration 

variable "region" {
  default = "ap-south-1"
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "vpc_tags" {
  default = {
    Name = "MY_VPC"
  }
}
variable "public_subnet_cidrs" {
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}
variable "igw_tag" {
  default = {
    Name = "igw"
  }
}
variable "public_rt_tag" {
  default = {
    Name = "public_rt"
  }
}

# ec2 configuration

variable "ami_id" {
  default = "ami-02bb7d8191b50f4bb"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "key_name" {
  default = "linux"
}
variable "ec2_tag" {
  default = {
    Name = "PUBLIC_NODE"
  }
}
variable "public_ip" {
  default = true
}

# security group configuration

variable "first_port" {
  default = "22"
}
variable "second_port" {
  default = "80"
}
variable "third_port" {
  default = "8080"
}
variable "sg_tag" {
  default = {
    Name = "PUBLIC_TF_SG"
  }
}
