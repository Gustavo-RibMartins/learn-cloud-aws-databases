variable "vpc_name" {
  type = map(string)
  default = {
    Name = "VPC-db-Postgree"
  }
  description = "Nome da VPC"
}

variable "priv_subnet_1a" {
  type = map(string)
  default = {
    Name = "Subnet-Privada-1a"
  }
  description = "Nome da Subnet Privada da AZ 1a"
}

variable "routetable_priv_1a" {
  type = map(string)
  default = {
    Name = "RouteTable-Privada-1a"
  }
  description = "Nome da Route Table Privada da AZ 1a"
}

variable "priv_subnet_1b" {
  type = map(string)
  default = {
    Name = "Subnet-Privada-1b"
  }
  description = "Nome da Subnet Privada da AZ 1b"
}

variable "routetable_priv_1b" {
  type = map(string)
  default = {
    Name = "RouteTable-Privada-1b"
  }
  description = "Nome da Route Table Privada da AZ 1b"
}

variable "RDS_Postgre_PizzaDB" {
  type = map(string)
  default = {
    Name = "PizzaDB"
  }
  description = "Nome do db RDS Postgres"
}