## Thanks for opening this pull request!

Your contribution is appreciated. Here are some helpful tips and resources.

<details>
<summary><b>💡 Show Tips and Tricks</b></summary>

### Terraform Example Commands

- `/tf-examples project=pre-1.0 action=plan` - Run terraform plan on the pre-1.0 example project
- `/tf-examples project=1.0 action=plan` - Run terraform plan on the 1.0 example project
- `/tf-examples project=all action=plan` - Run terraform plan on all example projects
- `/tf-examples project=pre-1.0 action=apply` - Apply terraform changes to the pre-1.0 example project
- `/tf-examples project=pre-1.0 action=destroy` - Destroy terraform resources in the pre-1.0 example project

### Pre-Release Commands

- `/pre-release version=v1.3.0-rc1` - Build and publish a pre-release from this PR's branch

Pre-releases are published to the Terraform Registry but are **not** the default version. See [CONTRIBUTING.md — Pre-Release Process](CONTRIBUTING.md#pre-release-process) for details.

</details>

<details>
<summary><b>📚 Show Repo Guidance</b></summary>

### About This Repository

This repository uses Speakeasy to generate the Terraform provider from the Airbyte OpenAPI specification. The CI will automatically build the provider, validate code generation, and run acceptance tests across Terraform versions 1.0-1.4.

**Note:** This is a generated codebase. Direct modifications to generated files are not accepted - changes must be made to the upstream OpenAPI spec.

[📝 _Edit this welcome message._](https://github.com/airbytehq/terraform-provider-airbyte/blob/main/.github/pr-welcome-message.md)

</details>
