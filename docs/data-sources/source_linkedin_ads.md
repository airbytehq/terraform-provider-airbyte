---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_linkedin_ads Data Source - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceLinkedinAds DataSource
---

# airbyte_source_linkedin_ads (Data Source)

SourceLinkedinAds DataSource

## Example Usage

```terraform
data "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  secret_id = "...my_secret_id..."
  source_id = "...my_source_id..."
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `source_id` (String)

### Optional

- `secret_id` (String) Optional secretID obtained through the public API OAuth redirect flow.

### Read-Only

- `configuration` (Attributes) (see [below for nested schema](#nestedatt--configuration))
- `name` (String)
- `workspace_id` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Read-Only:

- `account_ids` (List of Number) Specify the account IDs to pull data from, separated by a space. Leave this field empty if you want to pull the data from all accounts accessible by the authenticated user. See the <a href="https://www.linkedin.com/help/linkedin/answer/a424270/find-linkedin-ads-account-details?lang=en">LinkedIn docs</a> to locate these IDs.
- `ad_analytics_reports` (Attributes List) (see [below for nested schema](#nestedatt--configuration--ad_analytics_reports))
- `credentials` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials))
- `source_type` (String) must be one of ["linkedin-ads"]
- `start_date` (String) UTC date in the format YYYY-MM-DD. Any data before this date will not be replicated.

<a id="nestedatt--configuration--ad_analytics_reports"></a>
### Nested Schema for `configuration.ad_analytics_reports`

Read-Only:

- `name` (String) The name for the custom report.
- `pivot_by` (String) must be one of ["COMPANY", "ACCOUNT", "SHARE", "CAMPAIGN", "CREATIVE", "CAMPAIGN_GROUP", "CONVERSION", "CONVERSATION_NODE", "CONVERSATION_NODE_OPTION_INDEX", "SERVING_LOCATION", "CARD_INDEX", "MEMBER_COMPANY_SIZE", "MEMBER_INDUSTRY", "MEMBER_SENIORITY", "MEMBER_JOB_TITLE ", "MEMBER_JOB_FUNCTION ", "MEMBER_COUNTRY_V2 ", "MEMBER_REGION_V2", "MEMBER_COMPANY", "PLACEMENT_NAME", "IMPRESSION_DEVICE_TYPE"]
Choose a category to pivot your analytics report around. This selection will organize your data based on the chosen attribute, allowing you to analyze trends and performance from different perspectives.
- `time_granularity` (String) must be one of ["ALL", "DAILY", "MONTHLY", "YEARLY"]
Choose how to group the data in your report by time. The options are:<br>- 'ALL': A single result summarizing the entire time range.<br>- 'DAILY': Group results by each day.<br>- 'MONTHLY': Group results by each month.<br>- 'YEARLY': Group results by each year.<br>Selecting a time grouping helps you analyze trends and patterns over different time periods.


<a id="nestedatt--configuration--credentials"></a>
### Nested Schema for `configuration.credentials`

Read-Only:

- `source_linkedin_ads_authentication_access_token` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--source_linkedin_ads_authentication_access_token))
- `source_linkedin_ads_authentication_o_auth2_0` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--source_linkedin_ads_authentication_o_auth2_0))
- `source_linkedin_ads_update_authentication_access_token` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--source_linkedin_ads_update_authentication_access_token))
- `source_linkedin_ads_update_authentication_o_auth2_0` (Attributes) (see [below for nested schema](#nestedatt--configuration--credentials--source_linkedin_ads_update_authentication_o_auth2_0))

<a id="nestedatt--configuration--credentials--source_linkedin_ads_authentication_access_token"></a>
### Nested Schema for `configuration.credentials.source_linkedin_ads_authentication_access_token`

Read-Only:

- `access_token` (String) The access token generated for your developer application. Refer to our <a href='https://docs.airbyte.com/integrations/sources/linkedin-ads#setup-guide'>documentation</a> for more information.
- `auth_method` (String) must be one of ["access_token"]


<a id="nestedatt--configuration--credentials--source_linkedin_ads_authentication_o_auth2_0"></a>
### Nested Schema for `configuration.credentials.source_linkedin_ads_authentication_o_auth2_0`

Read-Only:

- `auth_method` (String) must be one of ["oAuth2.0"]
- `client_id` (String) The client ID of your developer application. Refer to our <a href='https://docs.airbyte.com/integrations/sources/linkedin-ads#setup-guide'>documentation</a> for more information.
- `client_secret` (String) The client secret of your developer application. Refer to our <a href='https://docs.airbyte.com/integrations/sources/linkedin-ads#setup-guide'>documentation</a> for more information.
- `refresh_token` (String) The key to refresh the expired access token. Refer to our <a href='https://docs.airbyte.com/integrations/sources/linkedin-ads#setup-guide'>documentation</a> for more information.


<a id="nestedatt--configuration--credentials--source_linkedin_ads_update_authentication_access_token"></a>
### Nested Schema for `configuration.credentials.source_linkedin_ads_update_authentication_access_token`

Read-Only:

- `access_token` (String) The access token generated for your developer application. Refer to our <a href='https://docs.airbyte.com/integrations/sources/linkedin-ads#setup-guide'>documentation</a> for more information.
- `auth_method` (String) must be one of ["access_token"]


<a id="nestedatt--configuration--credentials--source_linkedin_ads_update_authentication_o_auth2_0"></a>
### Nested Schema for `configuration.credentials.source_linkedin_ads_update_authentication_o_auth2_0`

Read-Only:

- `auth_method` (String) must be one of ["oAuth2.0"]
- `client_id` (String) The client ID of your developer application. Refer to our <a href='https://docs.airbyte.com/integrations/sources/linkedin-ads#setup-guide'>documentation</a> for more information.
- `client_secret` (String) The client secret of your developer application. Refer to our <a href='https://docs.airbyte.com/integrations/sources/linkedin-ads#setup-guide'>documentation</a> for more information.
- `refresh_token` (String) The key to refresh the expired access token. Refer to our <a href='https://docs.airbyte.com/integrations/sources/linkedin-ads#setup-guide'>documentation</a> for more information.

