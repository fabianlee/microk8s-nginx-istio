# new location for plugin binary
# ~/.local/share/terraform/plugins/registry.terraform.io/dmacvicar/libvirt/0.6.2/linux_amd64
# https://github.com/dmacvicar/terraform-provider-libvirt/blob/master/docs/migration-13.md
terraform {
  required_version = ">= 0.14"
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
      version = "0.6.10"
    }
  }
}

# instance of the provider
provider "libvirt" {
  uri = "qemu:///system"
}

