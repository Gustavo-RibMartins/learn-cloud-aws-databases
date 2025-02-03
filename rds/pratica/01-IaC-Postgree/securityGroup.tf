resource "aws_security_group" "sg_rds_postgres" {
  name        = "sg_rds_postgres"
  description = "Allow Postgres inbound traffic"

  ingress {
    description      = "Allow Postgres"
    from_port        = 5432
    to_port          = 5432
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = local.common_tags
}