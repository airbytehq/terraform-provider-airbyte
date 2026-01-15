<div align="center">
    <picture>
        <img src="https://user-images.githubusercontent.com/68016351/222853569-b35cc448-6481-4cf2-a237-bd5da47e94fd.png" width="500">
    </picture>
    <p>Programatically control Airbyte Cloud through an API.</p>
    <a href="https://reference.airbyte.com/reference/getting-started"><img src="https://img.shields.io/static/v1?label=Docs&message=API Ref&color=000000&style=for-the-badge" /></a>
    <a href="https://registry.terraform.io/providers/airbytehq/airbyte/latest/docs"><img src="https://img.shields.io/static/v1?label=Docs&message=terraform-provider-airbyte&color=000000&style=for-the-badge" /></a>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge" /></a>
</div>


## Authentication

Developers will need to create an API Key within your [Developer Portal](https://portal.airbyte.com/) to make API requests. You can use your existing Airbyte account to log in to the Developer Portal. Once you are in the Developer Portal, use the API Keys tab to create or remove API Keys. You can see a [walkthrough demo here](https://www.loom.com/share/7997a7c67cd642cc8d1c72ef0dfcc4bc)🎦

The Developer Portal UI can also be used to help build your integration by showing information about network requests in the Requests tab. API usage information is also available to you in the Usage tab.

<!-- Start Summary [summary] -->
## Summary

airbyte-api: Programmatically control Airbyte Cloud, OSS & Enterprise.
<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents
<!-- $toc-max-depth=2 -->
  * [Authentication](#authentication)
  * [Installation](#installation)
  * [Testing the provider locally](#testing-the-provider-locally)
  * [Authentication](#authentication-1)
  * [Available Resources and Data Sources](#available-resources-and-data-sources)

<!-- End Table of Contents [toc] -->

<!-- Start Installation [installation] -->
## Installation

To install this provider, copy and paste this code into your Terraform configuration. Then, run `terraform init`.

```hcl
terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.19.0"
    }
  }
}

provider "airbyte" {
  server_url = "..." # Optional
}
```
<!-- End Installation [installation] -->

<!-- Start Testing the provider locally [usage] -->
## Testing the provider locally

#### Local Provider

Should you want to validate a change locally, the `--debug` flag allows you to execute the provider against a terraform instance locally.

This also allows for debuggers (e.g. delve) to be attached to the provider.

```sh
go run main.go --debug
# Copy the TF_REATTACH_PROVIDERS env var
# In a new terminal
cd examples/your-example
TF_REATTACH_PROVIDERS=... terraform init
TF_REATTACH_PROVIDERS=... terraform apply
```

#### Compiled Provider

Terraform allows you to use local provider builds by setting a `dev_overrides` block in a configuration file called `.terraformrc`. This block overrides all other configured installation methods.

1. Execute `go build` to construct a binary called `terraform-provider-airbyte`
2. Ensure that the `.terraformrc` file is configured with a `dev_overrides` section such that your local copy of terraform can see the provider binary

Terraform searches for the `.terraformrc` file in your home directory and applies any configuration settings you set.

```
provider_installation {

  dev_overrides {
      "registry.terraform.io/airbytehq/airbyte" = "<PATH>"
  }

  # For all other providers, install them directly from their origin provider
  # registries as normal. If you omit this, Terraform will _only_ use
  # the dev_overrides block, and so no other providers will be available.
  direct {}
}
```
<!-- End Testing the provider locally [usage] -->

<!-- Start Authentication [security] -->
## Authentication

This provider supports authentication configuration via provider configuration.

Available configuration:

| Provider Attribute | Description |
|---|---|
| `bearer_auth` | HTTP Bearer. |
| `client_id` | OAuth2 Client Credentials Flow client identifier. |
| `client_secret` | OAuth2 Client Credentials Flow client secret. |
| `password` | HTTP Basic password. |
| `token_url` | OAuth2 Client Credentials Flow token URL. |
| `username` | HTTP Basic username. |
<!-- End Authentication [security] -->

<!-- Start Available Resources and Data Sources [operations] -->
## Available Resources and Data Sources

### Resources

* [airbyte_connection](docs/resources/connection.md)
* [airbyte_declarative_source_definition](docs/resources/declarative_source_definition.md)
* [airbyte_destination](docs/resources/destination.md)
* [airbyte_destination_definition](docs/resources/destination_definition.md)
* [airbyte_permission](docs/resources/permission.md)
* [airbyte_source](docs/resources/source.md)
* [airbyte_source_definition](docs/resources/source_definition.md)
* [airbyte_workspace](docs/resources/workspace.md)
### Data Sources

* [airbyte_connection](docs/data-sources/connection.md)
* [airbyte_connections](docs/data-sources/connections.md)
* [airbyte_declarative_source_definition](docs/data-sources/declarative_source_definition.md)
* [airbyte_destination](docs/data-sources/destination.md)
* [airbyte_destination_definition](docs/data-sources/destination_definition.md)
* [airbyte_permission](docs/data-sources/permission.md)
* [airbyte_source](docs/data-sources/source.md)
* [airbyte_source_definition](docs/data-sources/source_definition.md)
* [airbyte_workspace](docs/data-sources/workspace.md)
<!-- End Available Resources and Data Sources [operations] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->



Terraform allows you to use local provider builds by setting a `dev_overrides` block in a configuration file called `.terraformrc`. This block overrides all other configured installation methods.

Terraform searches for the `.terraformrc` file in your home directory and applies any configuration settings you set.

```
provider_installation {

  dev_overrides {
      "registry.terraform.io/airbyte/scaffolding" = "<PATH>"
  }

  # For all other providers, install them directly from their origin provider
  # registries as normal. If you omit this, Terraform will _only_ use
  # the dev_overrides block, and so no other providers will be available.
  direct {}
}
```

Your `<PATH>` may vary depending on how your Go environment variables are configured. Execute `go env GOBIN` to set it, then set the `<PATH>` to the value returned. If nothing is returned, set it to the default location, `$HOME/go/bin`.

### Contributions

While we value open-source contributions to this SDK, this library is generated programmatically.
Feel free to open a PR or a Github issue as a proof of concept and we'll do our best to include it in a future release!

### Provider Created by [Speakeasy](https://docs.speakeasyapi.dev/docs/using-speakeasy/client-sdks)
