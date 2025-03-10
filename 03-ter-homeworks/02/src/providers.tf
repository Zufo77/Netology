terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=1.5"
}

provider "yandex" {
  # token     = var.token
  cloud_id                 = "b1gooocbmd3m5205tomu" #var.cloud_id
  folder_id                = "b1gg3o8ollsj16p6p5ng" #var.folder_id
  service_account_key_file = file("~/authorized_key.json")
  zone                     =   "ru-central1-a"  #var.default_zone
}
