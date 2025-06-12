variable "region" {
  type        = string
  description = "region for currrent working template"
  default     = "us-east-1" #if the user doesn't pass the value this is the default
}
variable "network_name" {
  type        = string
  description = "vpc name"
  default     = "nop"
}
variable "network_cidr" {
  type        = string
  description = " vpc network cidr"
  default     = "10.0.0.0/16"
}
variable "subnet1_name"  {
    type = string 
    description = "subnet1 name"
    default = "mysubnet1"
}

variable "subnet1_cidr" {
    type = string 
    description = "subnet 1 cidr"
    default = "10.0.0.0/24"
}


variable "subnet2_name"  {
    type = string 
    description = "subnet2 name"
    default = "mysubnet2"
}

variable "subnet2_cidr" {
    type = string 
    description = "subnet 2 cidr"
    default = "10.0.1.0/24"
}

variable "subnet3_name"  {
    type = string 
    description = "subnet3 name"
    default = "mysubnet3"
}

variable "subnet3_cidr" {
    type = string 
    description = "subnet 3 cidr"
    default = "10.0.2.0/24"
}

variable "subnet4_name"  {
    type = string 
    description = "subnet4 name"
    default = "mysubnet4"
}

variable "subnet4_cidr" {
    type = string 
    description = "subnet 4 cidr"
    default = "10.0.3.0/24"
}