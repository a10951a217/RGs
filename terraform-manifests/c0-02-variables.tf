variable "resource_group" {
  description = "resource groups and their locations"
  type = map(string)
  default = {
    "Dev-RG" = "WestUS"
    "QA-RG" = "EastUS"
    "Prod-RG" = "CentralIndia"
  }
}

variable "vnet" {
    description = "Virtual Network details"
    type = map(string)
    default = {
      "Vnet_name" = "Dev-Vnet"
      "Vnet_address" = "10.0.0.0/16"
    }
}

variable "subnets" {
    description = "Subnets details"
    type = map(string)
    default = {
      "App-subnet" = "10.0.4.0/24"
      "DB-subnet" = "10.0.2.0/24"
      "Web-Subnet" = "10.0.3.0/24"
    }
}