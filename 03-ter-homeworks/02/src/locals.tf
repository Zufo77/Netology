locals {
  env = "test1"

  vm_web_name       = "netology-${local.env}-platform-web"
  vm_platform_name  = "netology-${local.env}-platform-app"
  vm_db_name        = "netology-${local.env}-platform-db"

  computed_metadata = merge(
    var.metadata,
    {
      "ssh-keys" = "ubuntu:${var.vms_ssh_root_key}"
    }
  )
}

