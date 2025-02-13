variable "instances" {
    type = map
    default = {
    mysql = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
    }
}
    
  variable "common_tags" {
    type = map 
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
  }

variable "zone_id" {
    default = "Z06930922N9BU7VR1YEID"
}

variable "domain_name" {
    default = "sivadevops.fun"
}