**Thanks for opening this pull request!**

Your contribution is appreciated. Here are some helpful commands you can use:

## Slash Commands

- `/tf-examples project=pre-1.0 action=plan` - Run terraform plan on the pre-1.0 example project
- `/tf-examples project=1.0 action=plan` - Run terraform plan on the 1.0 example project
- `/tf-examples project=all action=plan` - Run terraform plan on all example projects

### State Management Options

Add `state_mode=<mode>` to control state persistence:
- `state_mode=auto` (default) - State uploaded only for apply/destroy, not for plan
- `state_mode=read-only` - State downloaded but never uploaded
- `state_mode=read-write` - State always uploaded

## CI Information

This repository uses Speakeasy to generate the Terraform provider from the Airbyte OpenAPI specification. The CI will automatically:
- Build the provider
- Validate code generation
- Run acceptance tests across Terraform versions 1.0-1.4

**Note:** This is a generated codebase. Direct modifications to generated files are not accepted - changes must be made to the upstream OpenAPI spec.

Happy coding!
