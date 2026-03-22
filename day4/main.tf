terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {}

module "nginx1" {
  source = "./modules/nginx_container"

  container_name = "nginx_container_1"
  container_port = 8081
  image_name     = "nginx:latest"
}

module "nginx2" {
  source = "./modules/nginx_container"

  container_name = "nginx_container_2"
  container_port = 8082
  image_name     = "nginx:latest"
}

output "nginx1_url" {
  value = "http://localhost:8081"
}

output "nginx2_url" {
  value = "http://localhost:8082"
}