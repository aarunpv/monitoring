# Instructions and Commands

## Update Ubuntu
sudo apt-get update -y
sudo apt-get upgrade -y

## Optional to update Ubuntu distro
sudo apt-get dist-upgrade -y  

## Installing Docker community edition pre-requisites
sudo apt-get install ca-certificates curl gnupg lsb-release

## Adding docker-ce repos 
sudo mkdir -p /etc/apt/keyrings/ 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \n\
 sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \n\
 "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \n\
  https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | \n\
  sudo tee /etc/apt sources.list.d/docker.list > /dev/null"

## Installing Docker ce
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

## Docker images 
## https://hub.docker.com/r/bitnami/prometheus
docker pull bitnami/prometheus

## Persisting the docker database
docker run --name prometheus \n\
  -v /path/to/prometheus-persistence:/opt/bitnami/prometheus/data \n\
  bitnami/prometheus:latest

