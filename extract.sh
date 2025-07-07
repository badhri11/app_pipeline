#!/bin/bash
set -e
BLUEPRINT_FILE="blueprint.yaml"

extract_value() {
  grep "$1" "$BLUEPRINT_FILE" | sed "s/.*$1: //"
}

export PROJECT_NAME=$(extract_value "project_name")
export DOCKER_IMAGE=$(extract_value "image_name")
export DOCKER_USER=$(extract_value "dockerhub_user")
export DOCKER_REPO=$(extract_value "dockerhub_repo")
export EC2_IP=$(extract_value "ec2_ip")
export EMAIL=$(extract_value "email")
