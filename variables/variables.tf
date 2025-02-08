variable "ami_id" {
    type = string 
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string 
    default = "t3.micro"
}

variable "tags" {
    default = {
    Name = "backend"
    project = "Expense"
    component = "backend"
    environment = "dev"
    terraform = "true"
    }

}

variable "sg_name" {
    default = "allow-sshh"
}

variable "sg_description" {
    default = "Allow port number 22 for SSH access"
}

variable "from_port" {
    type = number 
    default = 22
}

variable "to_port" {
    type = number 
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}