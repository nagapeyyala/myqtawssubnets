variable "region" {
  type        = string
  description = "region for currrent working template"
  default     = "us-east-1" #if the user doesn't pass the value this is the default
}

variable "network_info" {
  description = "This is netowork info"
  type = object({
    name = string
    cidr = string
  })
  default = {
    name = "nop"
    cidr = "10.0.0.0/16"
  }
}

variable "subnet1_info" {
  description = "this subnet1 info"
  type = object({
    name = string
    cidr = string
    az   = string
  })
  default = {
    name = "app1"
    cidr = "10.0.1.0/24"
    az   = "us-east-1a"
  }
}

variable "subnet2_info" {
  description = "this is subnet2 info"
  type = object({
    name = string
    cidr = string
    az   = string
  })
  default = {
    name = "app2"
    cidr = "10.0.2.0/24"
    az   = "us-east-1b"
  }
}

variable "subnet3_info" {
  description = " This is subnet3 info"
  type = object({
    name = string
    cidr = string
    az   = string
  })
  default = {
    name = "db1"
    cidr = "10.0.3.0/24"
    az   = "us-east-1a"
  }
}

variable "subnet4_info" {
  type = object({
    name = string
    cidr = string
    az   = string
  })
  default = {
    name = "db2"
    cidr = "10.0.4.0/24"
    az   = "us-east-1b"
  }
}

