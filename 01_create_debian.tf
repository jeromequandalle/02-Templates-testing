resource "proxmox_vm_qemu" "debian_test" {
  name       = "debiantest"
  agent      = 1
  target_node= "forza"   # Spécifiez le nom de votre nœud Proxmox ici
  clone      = "debian.template"
  scsihw     = "virtio-scsi-pci"
  full_clone   = true
  #system
  vmid       = 5001
  cores      = 2
  memory     = 2048
  cpu        = "host"
  os_type    = "cloud-init"
  tags       = "test"
  pool = "zone-testing"
  #boot option
  bootdisk   = "scsi0"
  
  # Configuration du disque
    #disk
    disks {
      scsi {
      scsi0 {
       disk {
     size = "15G"
     storage = "production.storage.infra"
     format  = "raw"
            }
       } 
      }
      ide {
        ide2 {
          cloudinit {
            storage = "production.storage.infra"
          }
        }
      }
    
    }

  # Configuration du réseau

  network {
    model            = "virtio"
    bridge           = "vmbr1"
    }

  
# Utiliser Cloud-Init pour configurer l'IP et le nom d'hôte unique
  ciuser      = var.ci_user       # Utilisateur configuré via Cloud-Init
  cipassword  = var.ci_mdp      # Mot de passe pour l'utilisateur
  sshkeys     = file(var.ssh_key_pub)  # Ajouter une clé SSH pour accéder aux VMs (optionnel)
  ipconfig0 = "ip=192.168.42.11/24,gw=192.168.42.1"  # Remplacez par votre passerelle réseau
  searchdomain = "mynet.net"
  nameserver = "192.168.42.1"

#depends_on = [null_resource.create_template]
  
}