terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

provider "local" {}

# variable for filename
variable "filename" {
  description = "Name of the file"
  type        = string
}

# variable for message
variable "message" {
  description = "Content inside file"
  type        = string
}

resource "local_file" "file_creation" {
  filename = "${path.module}/${var.filename}"
  content  = var.message
}

output "created_file" {
  value = local_file.file_creation.filename
}