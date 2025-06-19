variable "vm_platform_name" {
  description = "Name of the platform VM"
  type        = string
  default     = "netology-develop-platform"
}

variable "vm_platform_cores" {
  description = "Number of CPU cores for platform VM"
  type        = number
  default     = 2
}

variable "vm_platform_memory" {
  description = "Amount of memory (GB) for platform VM"
  type        = number
  default     = 4
}

variable "vm_platform_core_fraction" {
  description = "Core fraction for platform VM"
  type        = number
  default     = 20
}

variable "vm_platform_zone" {
  description = "Availability zone for platform VM"
  type        = string
  default     = "ru-central1-a"
}

# Переменные для базы данных
variable "vm_db_name" {
  description = "Name of the database VM"
  type        = string
  default     = "netology-develop-platform-db"
}

variable "vm_db_cores" {
  description = "Number of CPU cores for database VM"
  type        = number
  default     = 2
}

variable "vm_db_memory" {
  description = "Amount of memory (GB) for database VM"
  type        = number
  default     = 2
}

variable "vm_db_core_fraction" {
  description = "Core fraction for database VM"
  type        = number
  default     = 20
}

variable "vm_db_zone" {
  description = "Availability zone for database VM"
  type        = string
  default     = "ru-central1-b"
}
