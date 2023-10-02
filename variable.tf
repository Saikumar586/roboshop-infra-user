variable "cidr_block" {

    default = "10.0.0.0/16"
  
}

variable "enable_dns_hostnames" {
  
  default = true
}

variable "enable_dns_support" {
  default = true
}

variable "default_tags"{
   default = { 
    Name = "Roboshop"
    Environment = "DEV"
    Terraform = "True"
    } 
}

variable "vpc_tags"{
default = {
    Name = "roboshop"
}
}

variable "public_subnet_cidr" {
    
    type = list

    default = ["10.0.1.0/24","10.0.2.0/24"]

}


variable "private_subnet_cidr" {
    
    type = list

    default = ["10.0.11.0/24","10.0.12.0/24"]

}
variable "database_subnet_cidr" {
    
    type = list

    default = ["10.0.21.0/24","10.0.22.0/24"]

}

variable "project_name" {
  default = "roboshop"
}

variable "sg_ingress_rules" {
  default = [
    {
      from_port = 0
      to_port = 0
      protocol = "-1"
      description = "allowing all traffic from internet"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "instances" {
  default = {
    MongoDB = "t3.medium"
    MySQL = "t3.medium"
    Redis = "t2.micro"
    RabbitMQ = "t2.micro"
    Catalogue = "t2.micro"
    User = "t2.micro"
    Cart = "t2.micro"
    Shipping = "t2.micro"
    Payment = "t2.micro"
    Web = "t2.micro"
  }
}

variable "zone_name" {
  default = "saidev.world"
}
  


