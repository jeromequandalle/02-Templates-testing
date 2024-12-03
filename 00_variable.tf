# Ip server
variable "ssh_host_debian" {}
variable "ssh_host_ubuntu_lts" {}
variable "ssh_host_ubunut_last" {}
variable "ssh_host_alma" {}

#ssh user
variable "ssh_user" {}
variable "ssh_key" {}
variable "ssh_key_pub" {}

#cloud-init
variable "ci_user" {}
variable "ci_mdp" {}

variable "storage" {}

# Déclaration des variables
variable "proxmox_api_token_id" {
  description = "ID du token API Proxmox"
  type        = string
}

variable "proxmox_api_token_secret" {
  description = "Secret du token API Proxmox"
  type        = string
  sensitive   = true  # Masque la valeur dans les logs Terraform
}
