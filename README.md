# 02-Templates-testing
 Creation de Template sur Proxmox

Ce repo a pour but de vous faire prendre en main à la fois terraform, mais aussi la notion de template cloud-init sur Terraform.
Assurez vous d'avoir les informations supplémentaires suivantes :
- Nom de l'API TOKEN de proxmox
- Valeur de votre token
  
Assurez vous de disposer :
- d'une installation de terraform fonctionnelle.
- d'un deploiement fonctionnel du repo https://github.com/jeromequandalle/01-Create-Template
  
Depuis une machine sous Linux (WSL fonctionne aussi) :
- Cloner le repository :
  git clone https://github.com/jeromequandalle/02-Templates-testing
- Editer le fichier terraform.tfvars et ajouter vos informations.
     
initialiser votre terraform. 
visualiser le plan du deploiement.
appliquer le plan.
arreter les machines.
Detruire le plan appliqué.
