<!-- BEGIN_TF_DOCS -->
# Wiz Code Repository Terraform Module

This Terraform module is meant to deploy a GitHub repository that is pre-configured to run Wiz Code security assessments in GitHub Actions pipelines.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| github | >= 6.0 |
| random | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| github | >= 6.0 |
| random | >= 2.0 |

## Resources

| Name | Type |
|------|------|
| [github_actions_secret.image_registry_password](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.image_registry_username](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.wiz_cli_client_id](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.wiz_cli_client_secret](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_variable.image_registry](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_variable) | resource |
| [github_actions_variable.image_repo](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_variable) | resource |
| [github_actions_variable.image_tag](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_variable) | resource |
| [github_actions_variable.wiz_cli_environment](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_variable) | resource |
| [github_repository.wiz_code](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [random_id.uniq](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| image\_registry\_password | A string representing the password for the container registry to be used. [Examples](https://github.com/docker/login-action) | `string` | n/a | yes |
| image\_registry\_username | A string representing the username for the container registry to be used. [Examples](https://github.com/docker/login-action) | `string` | n/a | yes |
| wiz\_cli\_client\_id | A string representing the Client ID for the Wiz CLI service account. | `string` | n/a | yes |
| wiz\_cli\_client\_secret | A string representing the Client Secret for the Wiz CLI service account. | `string` | n/a | yes |
| image\_registry | The FQDN for the container image registry that should be configured. | `string` | `""` | no |
| image\_repo | A string representing the repository name that should be used in the configured container registry. | `string` | `""` | no |
| image\_tag | A string representing the container image tag that should be used for the configured container repository. | `string` | `"latest"` | no |
| prefix | A string representing a default prefix for resources created by this module. | `string` | `"wiz-code"` | no |
| wiz\_cli\_environment | A string representing the environment for the Wiz CLI. | `string` | `"app"` | no |
| wiz\_cli\_policy\_iac | A string of comma separated Wiz CLI policies to use for evaluation. | `string` | `""` | no |
| wiz\_cli\_policy\_secret | A string of comma separated Wiz CLI policies to use for evaluation. | `string` | `""` | no |
| wiz\_cli\_policy\_vuln | A string of comma separated Wiz CLI policies to use for evaluation. | `string` | `""` | no |
<!-- END_TF_DOCS -->