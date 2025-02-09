locals {
    domain_name = "sivadevops.fun"
    zone_id = "Z06930922N9BU7VR1YEID"
    #instance_type  = var.instance_names[count.index] == "mysql" ? "t3.small" : "t3.micro"
    # count.index will not work in locals
}