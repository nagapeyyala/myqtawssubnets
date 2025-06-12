region = "us-east-1"
network_info = {
  name = "nop"
  cidr = "192.168.0.0/16"
}
subnet1_info = {
  name = "web-1"
  cidr = "192.168.0.0/24"
  az   = "us-east-1a"
}
subnet2_info = {
  name = "web-2"
  cidr  = "192.168.1.0/24"
  az = "us-east-1b"
}
subnet3_info = {
  name = "db-1"
  cidr = "192.168.2.0/24"
  az   = "us-east-1a"
}
subnet4_info = {
  name = "db-2"
  cidr = "192.168.3.0/24"
  az   = "us-east-1b"
}