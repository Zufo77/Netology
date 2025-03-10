terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
  required_version = ">=1.8.4" 
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "random_password" "random_string" {
  length      = 16
  special     = false
  min_upper   = 1
  min_lower   = 1
  min_numeric = 1
}

resource "docker_image" "nginx" { /*добавил имя "nginx"*/
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx_container" { /*имя не может начинаться с цифры - переименовал*/
  image = docker_image.nginx.image_id
  name  = "hello_world" /* изменил имя контейнера */

  ports {
    internal = 80
    external = 9090
  }
}
