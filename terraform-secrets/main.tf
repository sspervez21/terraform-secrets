# Secret Variables
variable "secret1_name" {
  description = "secret1 name"
  type        = string
  sensitive   = true
}

variable "secret1_password" {
  description = "secret1 password"
  type        = string
  sensitive   = true
}

variable "secret2_key" {
  description = "secret2 key"
  type        = string
  sensitive   = true
}

# Creating an AWS Secret for API Service User
resource "aws_secretsmanager_secret" "secret1" {
  name                    = "testing/secret1"
  description             = "Service Account Username for the API"
  recovery_window_in_days = 0
  tags = {
    Name        = "testing/secret1"
  }
}

resource "aws_secretsmanager_secret_version" "secret1" {
  secret_id     = aws_secretsmanager_secret.secret1.id
  secret_string = <<EOF
{"name": "${var.secret1_name}","password": "${var.secret1_password}"}
EOF 
}

# Creating an AWS Secret for API Service User
resource "aws_secretsmanager_secret" "secret2" {
  name                    = "testing/secret2"
  description             = "Service Account Username for the API"
  recovery_window_in_days = 0
  tags = {
    Name        = "testing/secret2"
  }
}

resource "aws_secretsmanager_secret_version" "secret2" {
  secret_id     = aws_secretsmanager_secret.secret2.id
  secret_string = <<EOF
{"key": "${var.secret2_key}"}
EOF 
}
