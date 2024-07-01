#!/bin/bash

terraform -chdir=terraform init --upgrade
terraform -chdir=terraform apply --auto-approve

git remote remove origin
git remote add origin $(terraform -chdir=terraform output "git_http_clone_url" | tr -d '"')
git push -u origin main
