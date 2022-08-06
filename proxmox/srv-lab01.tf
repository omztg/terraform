resource "proxmox_vm_qemu" "TF001" {
    name = "TF001"
    desc = "LAB Terraform"
    mvmid = "200"
    target_node = "proxmox"

    agent = 1

    clone = "docker-HML"
    cores = 2
    sockets = 1
    cpu = "Default"
    mememory = 1024

    network {
      bridge = "vmbr0"
      model = "VirtIO"
    }
    disk {
      storage = "local-500"
      type = "virtio"
      size = "80G"
    }

    os_type = "5.x - 2.6 Kernel"
    ipconfig0 = "ip=172.16.0.85/32,gw=172.16.0.1"
    nameserver = "172.16.0.1"  
}