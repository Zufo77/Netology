output "web_instance_info" {
  description = "Информация о web VM"
  value = {
    instance_name = yandex_compute_instance.platform.name
    external_ip   = yandex_compute_instance.platform.network_interface[0].nat_ip_address
    fqdn          = yandex_compute_instance.platform.fqdn
  }
}

output "platform_vm_instance_info" {
  description = "Информация о platform_vm"
  value = {
    instance_name = yandex_compute_instance.platform_vm.name
    external_ip   = yandex_compute_instance.platform_vm.network_interface[0].nat_ip_address
    fqdn          = yandex_compute_instance.platform_vm.fqdn
  }
}

output "db_vm_instance_info" {
  description = "Информация о db_vm"
  value = {
    instance_name = yandex_compute_instance.db_vm.name
    external_ip   = yandex_compute_instance.db_vm.network_interface[0].nat_ip_address
    fqdn          = yandex_compute_instance.db_vm.fqdn
  }
}
