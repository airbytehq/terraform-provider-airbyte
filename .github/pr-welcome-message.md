**Thanks for opening this pull request!**

Your contribution is appreciated. Here are some helpful commands you can use:

## Slash Commands

- `/tf-examples project=pre-1.0 action=plan` - Run terraform plan on the pre-1.0 example project
- `/tf-examples project=1.0 action=plan` - Run terraform plan on the 1.0 example project
- `/tf-examples project=all action=plan` - Run terraform plan on all example projects
- `/tf-examples project=pre-1.0 action=apply` - Apply terraform changes to the pre-1.0 example project
- `/tf-examples project=pre-1.0 action=destroy` - Destroy terraform resources in the pre-1.0 example project

## CI Information

This repository uses Speakeasy to generate the Terraform provider from the Airbyte OpenAPI specification. The CI will automatically:
- Build the provider
- Validate code generation
- Run acceptance tests across Terraform versions 1.0-1.4

**Note:** This is a generated codebase. Direct modifications to generated files are not accepted - changes must be made to the upstream OpenAPI spec.

Happy coding!
