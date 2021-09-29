#!/bin/bash
az deployment group create --resource-group CommanderGroup --template-file template.json --parameters parameters.json --parameters "adminPublicKey=ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCqConwPjzoqdGxARt24crIk5hyVSsvlfABCprxAghKrq6t7ijZL9kvRKpY69QZQtkgKdGLfNDgOd923ZYQueS91btWelcKm26KnBWOKdy6MZ0C4WdQ6lfhAZ2qqiLjk12tn5klA+0YPJf3D6ymKyIL9HLaRze+WerQCgStSS4uIjJJn5gigvkZW0Uwqv6ML707zdajJl7YTgVtvnojhxq2k69TXY5NnDkS7F+5hAAf/qPXfh9N29YrtHKrzMOv8Pn3QWhZXqWsDtxk5kT1A8+nTFInNu1uosEiE3fp3VB/nZlbqrWhgHTNAYeEVMMks6YJXCxP9cYTFKi57LRZpjpB brasol"

az vm extension set \
    --publisher Microsoft.Azure.ActiveDirectory \
    --name AADSSHLoginForLinux \
    --resource-group CommanderGroup \
    --vm-name commander01

