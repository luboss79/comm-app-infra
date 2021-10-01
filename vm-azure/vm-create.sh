#!/bin/bash
az deployment group create --resource-group CommanderGroup --template-file template.json --parameters parameters.json --parameters "adminPublicKey=ssh-rsa AAAAB3NzaC1yc2EAAAADAQA admin"

az vm extension set \
    --publisher Microsoft.Azure.ActiveDirectory \
    --name AADSSHLoginForLinux \
    --resource-group CommanderGroup \
    --vm-name commander01

