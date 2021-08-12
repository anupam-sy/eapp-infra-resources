# Resource Block to generate random passwords for SQL Instance
resource "random_string" "dev_sql_instance_pwd" {
  length      = 32
  upper       = true
  min_upper   = 5
  lower       = true
  min_lower   = 5
  number      = true
  min_numeric = 5
  special     = true
}

# Resource specific output definitions
output "dev_sql_instance_pwd" {
  value = random_string.dev_sql_instance_pwd.result
}