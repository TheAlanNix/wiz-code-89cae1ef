# GitHub Authentication Methods:
# https://registry.terraform.io/providers/integrations/github/latest/docs#authentication
provider "github" {}

locals {
  image_registry  = length(var.image_registry) > 0 ? var.image_registry : "registry.hub.docker.com/${var.image_registry_username}"
  image_repo      = length(var.image_repo) > 0 ? var.image_repo : "${var.prefix}-${random_id.uniq.hex}"
  repository_name = "${var.prefix}-${random_id.uniq.hex}"
}

resource "random_id" "uniq" {
  byte_length = 4
}

resource "github_repository" "wiz_code" {
  name = local.repository_name

  visibility = "public"

  has_issues      = true
  has_discussions = false
  has_downloads   = false
  has_projects    = false
  has_wiki        = false

  delete_branch_on_merge = true
}

resource "github_actions_variable" "image_registry" {
  repository    = github_repository.wiz_code.name
  variable_name = "IMAGE_REGISTRY"
  value         = local.image_registry
}

resource "github_actions_secret" "image_registry_username" {
  repository      = github_repository.wiz_code.name
  secret_name     = "IMAGE_REGISTRY_USER"
  plaintext_value = var.image_registry_username
}

resource "github_actions_secret" "image_registry_password" {
  repository      = github_repository.wiz_code.name
  secret_name     = "IMAGE_REGISTRY_PASS"
  plaintext_value = var.image_registry_password
}

resource "github_actions_variable" "image_repo" {
  repository    = github_repository.wiz_code.name
  variable_name = "IMAGE_REPO"
  value         = local.image_repo
}

resource "github_actions_variable" "image_tag" {
  repository    = github_repository.wiz_code.name
  variable_name = "IMAGE_TAG"
  value         = var.image_tag
}

resource "github_actions_secret" "wiz_cli_client_id" {
  repository      = github_repository.wiz_code.name
  secret_name     = "WIZ_CLIENT_ID"
  plaintext_value = var.wiz_cli_client_id
}

resource "github_actions_secret" "wiz_cli_client_secret" {
  repository      = github_repository.wiz_code.name
  secret_name     = "WIZ_CLIENT_SECRET"
  plaintext_value = var.wiz_cli_client_secret
}

resource "github_actions_variable" "wiz_cli_environment" {
  repository    = github_repository.wiz_code.name
  variable_name = "WIZ_ENV"
  value         = var.wiz_cli_environment
}
