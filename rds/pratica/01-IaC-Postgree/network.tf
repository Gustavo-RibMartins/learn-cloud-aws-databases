###################### VPC ####################
resource "aws_vpc" "vpc_db_postgree" {
  cidr_block = "10.0.0.0/16"

  tags = merge(local.common_tags, var.vpc_name)
}

############## Subnet Privada 1a ##############
resource "aws_subnet" "subnet_priv_1a" {
  vpc_id            = aws_vpc.vpc_db_postgree.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "sa-east-1a"

  tags = merge(local.common_tags, var.priv_subnet_1a)
}

resource "aws_route_table" "routetable_priv_1a" {
  vpc_id = aws_vpc.vpc_db_postgree.id

  tags = merge(local.common_tags, var.routetable_priv_1a)
}

resource "aws_route_table_association" "routetable_priv_1a_associate" {
  subnet_id      = aws_subnet.subnet_priv_1a.id
  route_table_id = aws_route_table.routetable_priv_1a.id
}

############## Subnet Privada 1b ##############
resource "aws_subnet" "subnet_priv_1b" {
  vpc_id            = aws_vpc.vpc_db_postgree.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "sa-east-1b"

  tags = merge(local.common_tags, var.priv_subnet_1b)
}

resource "aws_route_table" "routetable_priv_1b" {
  vpc_id = aws_vpc.vpc_db_postgree.id

  tags = merge(local.common_tags, var.routetable_priv_1b)
}

resource "aws_route_table_association" "routetable_priv_1b_associate" {
  subnet_id      = aws_subnet.subnet_priv_1b.id
  route_table_id = aws_route_table.routetable_priv_1b.id
}
