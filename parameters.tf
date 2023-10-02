
#Parameter store: its configure management and storing the secrets like passwords, instance, amazon elastic,vpcid and more and its store centrally so any other resource in aws can refer and reuse and its key value pair.
resource "aws_ssm_parameter" "vpc_id" {
  name  = "/roboshop/dev/vpc_id"
  type  = "String"
  value = local.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/roboshop/dev/public_subnet_ids"
  type  = "StringList"
  value = join(",", local.public_subnet_ids)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/roboshop/dev/private_subnet_ids"
  type  = "StringList"
  value = join(",", local.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
  name  = "/roboshop/dev/database_subnet_ids"
  type  = "StringList"
  value = join(",", local.database_subnet_ids)
}


resource "aws_ssm_parameter" "allow_all_security_group_id" {
  name  = "/roboshop/dev/allow_all_security_group_id"
  type  = "String"
  value = local.allow_all_security_group_id
}