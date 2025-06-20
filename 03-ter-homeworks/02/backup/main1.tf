resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr 
}


data "yandex_compute_image" "ubuntu" {
  family = "ubuntu-2204-lts" #версия убунту не 2004 а 2204
}
resource "yandex_compute_instance" "platform" {
  name        = "netology-develop-platform-web"
  hostname    = "netology-develop-platform-web" # добавил hostname
  platform_id = "standard-v3" #"standart-v4"
  resources  { 
    cores         = 2
    memory        = 1
    core_fraction = 20
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      type     = "network-hdd" #Добавил
      size     = 10 #Добавил
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
  }

}
