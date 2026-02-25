terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "cloudforge" {
  name = "ajtasingh/cloudforge-app:latest"
}

resource "docker_container" "cloudforge_container" {
  name  = "cloudforge-terraform"
  image = docker_image.cloudforge.image_id

  ports {
    internal = 5000
    external = 8085
  }
}
