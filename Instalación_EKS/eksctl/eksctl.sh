#!/bin/bash

# Instrucciones: 
# 1- Ingresar con ssh -i /dirección_del_archivo.pem ubuntu@la_ip_publica_del_ec2
# 2- crear el archivo con el contenido del script setup.sh (nano setup.sh)
# 3- chmod +x setup.sh
# 4- ./setup.sh

# Instalamos eksctl en la instancia Ec2

curl --silent --location "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/eksctl" -o eksctl
chmod +x eksctl
sudo mv eksctl /usr/local/bin/
