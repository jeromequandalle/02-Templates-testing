#ssh connexion commun
ssh_key = "<---chemin de votre clé public------>"
ssh_user = "<----votre utilisateur ssh ----->"
node = "<---nom de votre node proxmox ---->"

#ssh proxmox


ciipconfig = "ip=dhcp"
promox_url =  "https://<---ip de votre proxmox --->:8006/api2/json"
storage = "<---nom de votre storage --->"


#API paramètres
proxmox_api_token_id     = "<--- nom de votre API TOKEN ---->"
proxmox_api_token_secret = "<---- votre API TOKEN ---->"


#cloud-init paramètres
ssh_key_pub = "<----chemin de votre clé public ---->"
ci_user = "<----- definir un utilisateur pour votre machine --->"
ci_mdp  = "<----- definir un mot de passe pour votre machine --->"
