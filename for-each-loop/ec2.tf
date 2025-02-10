resource "aws_instance" "expense" {
    for_each = var.instances
    ami = "ami-09c813fb71547fc4f"
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    # tags = {
    #     Name = var.instance_names[count.index]
    # }

    tags = merge (
        var.common_tags,
        {
            Name = each.key
        }
    )
}

resource "aws_security_group" "allow_ssh_terraform" {
    name = "allow_sshh"
    description = "allows port no 22 for ssh access"

     # usually we allow everything in egress
     egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"] #allow from everyone
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = merge(
        var.common_tags,
        {
            Name = "allow_sshh"
        }
    )

}