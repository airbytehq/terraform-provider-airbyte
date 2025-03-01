---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_google_pagespeed_insights Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceGooglePagespeedInsights Resource
---

# airbyte_source_google_pagespeed_insights (Resource)

SourceGooglePagespeedInsights Resource

## Example Usage

```terraform
resource "airbyte_source_google_pagespeed_insights" "my_source_googlepagespeedinsights" {
  configuration = {
    api_key = "...my_api_key..."
    categories = [
      "performance"
    ]
    strategies = [
      "desktop"
    ]
    urls = [
      "..."
    ]
  }
  definition_id = "26e9a294-5883-4e18-ab22-4401b7f98355"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9300a7b0-b87b-471a-83dd-e87236710c39"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `configuration` (Attributes) (see [below for nested schema](#nestedatt--configuration))
- `name` (String) Name of the source e.g. dev-mysql-instance.
- `workspace_id` (String)

### Optional

- `definition_id` (String) The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided. Requires replacement if changed.
- `secret_id` (String) Optional secretID obtained through the public API OAuth redirect flow. Requires replacement if changed.

### Read-Only

- `created_at` (Number)
- `source_id` (String)
- `source_type` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `categories` (List of String) Defines which Lighthouse category to run. One or many of: "accessibility", "best-practices", "performance", "pwa", "seo".
- `strategies` (List of String) The analyses strategy to use. Either "desktop" or "mobile".
- `urls` (List of String) The URLs to retrieve pagespeed information from. The connector will attempt to sync PageSpeed reports for all the defined URLs. Format: https://(www.)url.domain

Optional:

- `api_key` (String, Sensitive) Google PageSpeed API Key. See <a href="https://developers.google.com/speed/docs/insights/v5/get-started#APIKey">here</a>. The key is optional - however the API is heavily rate limited when using without API Key. Creating and using the API key therefore is recommended. The key is case sensitive.

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_google_pagespeed_insights.my_airbyte_source_google_pagespeed_insights ""
```
