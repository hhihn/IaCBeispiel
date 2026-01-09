# Terraform Konfiguration
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

# Docker Provider
provider "docker" {}

# Docker Image herunterladen
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Docker Container erstellen
resource "docker_container" "nginx" {
  name  = "terraform-nginx"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }
}