output "public_ip" {
    value = aws_instance.terraform.public_ip
    sensitive   = false
    description = "This is the Public IP of instance created"
}

output "instance_id" {
    value = aws_instance.terraform.id
    sensitive   = false
    description = "This is the Public IP of instance created"
}

# output "instance_info" {
#     value = aws_instance.terraform
#     sensitive   = false
#     description = "This is the Public IP of instance created"
# }

