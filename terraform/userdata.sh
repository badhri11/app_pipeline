#!/bin/bash
apt update -y
apt install -y docker.io docker-compose

systemctl start docker
systemctl enable docker

docker login -u badhri11 -p <YOUR_DOCKERHUB_TOKEN>
docker pull badhri11/tech-blog-app:latest

cat <<EOF > /home/ubuntu/docker-compose.yml
version: '3'
services:
  app:
    image: badhri11/tech-blog-app:latest
    ports:
      - "80:5000"
    restart: always
EOF

docker-compose -f /home/ubuntu/docker-compose.yml up -d
