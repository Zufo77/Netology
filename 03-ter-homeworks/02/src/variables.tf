variable "cloud_id" {
  type        = string
  #default     = ""
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  #default     = ""
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_zone_b" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "default_cidr_b" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vpc_name_b" {
  type        = string
  default     = "develop_b"
  description = "VPC network & subnet name"
}

variable "vm_web_image_family" {
  type    = string
  default = "ubuntu-2204-lts"
}

variable "vm_web_platform_id" {
  type    = string
  default = "standard-v3"
}

variable "vm_web_preemptible" {
  type    = bool
  default = true
}

variable "vm_web_nat" {
  type    = bool
  default = true
}

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFGYW++A+sQv9ljFFQvQE3tN94GEZFGtFaXsT7Ka7jLL yrz@HP-Zufo-U"
  description = "ssh-keygen -t ed25519"
}

variable "vms_resources" {
  description = "Конфигурация ресурсов для виртуальных машин"
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    hdd_size      = number
    hdd_type      = string
  }))
  default = {
    web = {
      cores         = 2
      memory        = 2
      core_fraction = 20
      hdd_size      = 10
      hdd_type      = "network-hdd"
    }
    platform = {
      cores         = 2
      memory        = 2
      core_fraction = 20
      hdd_size      = 15
      hdd_type      = "network-hdd"
    }
    db = {
      cores         = 2
      memory        = 4
      core_fraction = 20
      hdd_size      = 10
      hdd_type      = "network-ssd"
    }
  }
}

variable "metadata" {
  description = "Общие метаданные для всех ВМ, без ssh-keys"
  type = map(string)
  default = {
    "serial-port-enable" = "1"
  }
}
