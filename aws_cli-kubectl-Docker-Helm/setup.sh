#!/bin/bash

# Instrucciones: 
# 1- Ingresar con ssh -i /dirección_del_archivo.pem ubuntu@la_ip_publica_del_ec2
# 2- crear el archivo con el contenido del script setup.sh (nano setup.sh)
# 3- chmod +x setup.sh
# 4- ./setup.sh

# Actualizar el sistema y los paquetes
sudo apt update -y
sudo apt upgrade -y

# Instalar AWS CLI
sudo apt install -y awscli

# Instalar kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

# Instalar Docker
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

# Instalar Helm
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt install -y apt-transport-https --no-install-recommends
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt update
sudo apt install -y helm

# Salida final
echo "Instalación completada: AWS CLI, kubectl, Docker y Helm están listos para usar."
