variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
  description = "instance names"

}

variable "domain_name" {
  default = "sivadevops.fun"
}

variable "zone_id" {
  default = "Z06930922N9BU7VR1YEID"
}

variable "common_tags" {
  type = map(any)
  default = {
    Project     = "expense"
    Environment = "dev"
    Terraform   = "true"
  }
}