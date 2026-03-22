terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {}

# dynamic container list variable
variable "container_config" {
  type = list(object({
    name = string
    port = number
  }))
}

# pull nginx image once
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# dynamically create containers
resource "docker_container" "dynamic_nginx" {
  for_each = {
    for c in var.container_config : c.name => c
  }

  name  = each.value.name
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = each.value.port
  }
}

# output all URLs
output "container_urls" {
  value = [
    for c in var.container_config :
    "http://localhost:${c.port}"
  ]
}