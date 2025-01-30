resource "aws_dynamodb_table" "tb_funcionarios" {
  name           = "tb_funcionarios"
  read_capacity  = 2
  write_capacity = 2
  hash_key       = "cod_func"
  tags = {
    Name      = "tb_funcionarios"
    Terraform = true
  }

  attribute {
    name = "cod_func"
    type = "S"
  }
}

resource "aws_dynamodb_table_item" "tb_funcionarios_itens_1" {
  table_name = aws_dynamodb_table.tb_funcionarios.name
  hash_key   = aws_dynamodb_table.tb_funcionarios.hash_key

  item = <<ITEM
{
  "cod_func": {"S": "130"},
  "nom_func": {"S": "Gustavo"},
  "num_idad_func": {"N": "27"},
  "ind_func_gestor": {"B": "true"},
  "list_func_skills": {"S": "[SQL, Python, AWS]"}
}
ITEM
}

resource "aws_dynamodb_table_item" "tb_funcionarios_itens_2" {
  table_name = aws_dynamodb_table.tb_funcionarios.name
  hash_key   = aws_dynamodb_table.tb_funcionarios.hash_key

  item = <<ITEM
{
  "cod_func": {"S": "110"},
  "nom_func": {"S": "Alex"},
  "ind_func_gestor": {"B": "true"},
  "list_func_skills": {"S": "[SQL, AWS, HTML]"}
}
ITEM
}

resource "aws_dynamodb_table_item" "tb_funcionarios_itens_3" {
  table_name = aws_dynamodb_table.tb_funcionarios.name
  hash_key   = aws_dynamodb_table.tb_funcionarios.hash_key

  item = <<ITEM
{
  "cod_func": {"S": "120"},
  "nom_func": {"S": "Priscila"},
  "ind_func_gestor": {"B": "true"},
  "qtd_dias_ferias": {"N": "15"}
}
ITEM
}
