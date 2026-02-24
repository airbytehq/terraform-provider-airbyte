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
  * [Migrating to 1.0](#migrating-to-10)
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
      version = "1.0.0"
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

## Migrating to 1.0

> **Deprecation Notice:** Typed connector-specific resources (e.g., `airbyte_source_postgres`) are deprecated in 1.0 and targeted for removal in 1.1.

If you are using typed resources, see the [Migrating to 1.0](docs/guides/v1_migration_guide.md) guide to move to the generic `airbyte_source` / `airbyte_destination` resources with the `airbyte_connector_configuration` data source for type-validated configuration.

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

### Managed Resources

* [airbyte_connection](docs/resources/connection.md)
* [airbyte_declarative_source_definition](docs/resources/declarative_source_definition.md)
* [airbyte_destination](docs/resources/destination.md)
* [airbyte_destination_astra](docs/resources/destination_astra.md)
* [airbyte_destination_aws_datalake](docs/resources/destination_aws_datalake.md)
* [airbyte_destination_azure_blob_storage](docs/resources/destination_azure_blob_storage.md)
* [airbyte_destination_bigquery](docs/resources/destination_bigquery.md)
* [airbyte_destination_clickhouse](docs/resources/destination_clickhouse.md)
* [airbyte_destination_convex](docs/resources/destination_convex.md)
* [airbyte_destination_databricks](docs/resources/destination_databricks.md)
* [airbyte_destination_duckdb](docs/resources/destination_duckdb.md)
* [airbyte_destination_dynamodb](docs/resources/destination_dynamodb.md)
* [airbyte_destination_elasticsearch](docs/resources/destination_elasticsearch.md)
* [airbyte_destination_firebolt](docs/resources/destination_firebolt.md)
* [airbyte_destination_firestore](docs/resources/destination_firestore.md)
* [airbyte_destination_gcs](docs/resources/destination_gcs.md)
* [airbyte_destination_google_sheets](docs/resources/destination_google_sheets.md)
* [airbyte_destination_milvus](docs/resources/destination_milvus.md)
* [airbyte_destination_mongodb](docs/resources/destination_mongodb.md)
* [airbyte_destination_mssql](docs/resources/destination_mssql.md)
* [airbyte_destination_mysql](docs/resources/destination_mysql.md)
* [airbyte_destination_oracle](docs/resources/destination_oracle.md)
* [airbyte_destination_pgvector](docs/resources/destination_pgvector.md)
* [airbyte_destination_pinecone](docs/resources/destination_pinecone.md)
* [airbyte_destination_postgres](docs/resources/destination_postgres.md)
* [airbyte_destination_pubsub](docs/resources/destination_pubsub.md)
* [airbyte_destination_qdrant](docs/resources/destination_qdrant.md)
* [airbyte_destination_redis](docs/resources/destination_redis.md)
* [airbyte_destination_redshift](docs/resources/destination_redshift.md)
* [airbyte_destination_s3](docs/resources/destination_s3.md)
* [airbyte_destination_sftp_json](docs/resources/destination_sftp_json.md)
* [airbyte_destination_snowflake](docs/resources/destination_snowflake.md)
* [airbyte_destination_snowflake_cortex](docs/resources/destination_snowflake_cortex.md)
* [airbyte_destination_teradata](docs/resources/destination_teradata.md)
* [airbyte_destination_timeplus](docs/resources/destination_timeplus.md)
* [airbyte_destination_typesense](docs/resources/destination_typesense.md)
* [airbyte_destination_vectara](docs/resources/destination_vectara.md)
* [airbyte_destination_weaviate](docs/resources/destination_weaviate.md)
* [airbyte_destination_yellowbrick](docs/resources/destination_yellowbrick.md)
* [airbyte_destination_definition](docs/resources/destination_definition.md)
* [airbyte_permission](docs/resources/permission.md)
* [airbyte_source](docs/resources/source.md)
* [airbyte_source_aha](docs/resources/source_aha.md)
* [airbyte_source_airbyte](docs/resources/source_airbyte.md)
* [airbyte_source_aircall](docs/resources/source_aircall.md)
* [airbyte_source_airtable](docs/resources/source_airtable.md)
* [airbyte_source_amazon_ads](docs/resources/source_amazon_ads.md)
* [airbyte_source_amazon_seller_partner](docs/resources/source_amazon_seller_partner.md)
* [airbyte_source_amazon_sqs](docs/resources/source_amazon_sqs.md)
* [airbyte_source_amplitude](docs/resources/source_amplitude.md)
* [airbyte_source_apify_dataset](docs/resources/source_apify_dataset.md)
* [airbyte_source_appcues](docs/resources/source_appcues.md)
* [airbyte_source_appfigures](docs/resources/source_appfigures.md)
* [airbyte_source_appfollow](docs/resources/source_appfollow.md)
* [airbyte_source_asana](docs/resources/source_asana.md)
* [airbyte_source_auth0](docs/resources/source_auth0.md)
* [airbyte_source_aws_cloudtrail](docs/resources/source_aws_cloudtrail.md)
* [airbyte_source_azure_blob_storage](docs/resources/source_azure_blob_storage.md)
* [airbyte_source_azure_table](docs/resources/source_azure_table.md)
* [airbyte_source_bamboo_hr](docs/resources/source_bamboo_hr.md)
* [airbyte_source_basecamp](docs/resources/source_basecamp.md)
* [airbyte_source_bigquery](docs/resources/source_bigquery.md)
* [airbyte_source_bing_ads](docs/resources/source_bing_ads.md)
* [airbyte_source_bitly](docs/resources/source_bitly.md)
* [airbyte_source_braintree](docs/resources/source_braintree.md)
* [airbyte_source_braze](docs/resources/source_braze.md)
* [airbyte_source_breezy_hr](docs/resources/source_breezy_hr.md)
* [airbyte_source_brevo](docs/resources/source_brevo.md)
* [airbyte_source_buildkite](docs/resources/source_buildkite.md)
* [airbyte_source_buzzsprout](docs/resources/source_buzzsprout.md)
* [airbyte_source_calendly](docs/resources/source_calendly.md)
* [airbyte_source_canny](docs/resources/source_canny.md)
* [airbyte_source_cart](docs/resources/source_cart.md)
* [airbyte_source_chameleon](docs/resources/source_chameleon.md)
* [airbyte_source_chargebee](docs/resources/source_chargebee.md)
* [airbyte_source_chartmogul](docs/resources/source_chartmogul.md)
* [airbyte_source_cimis](docs/resources/source_cimis.md)
* [airbyte_source_clazar](docs/resources/source_clazar.md)
* [airbyte_source_clickhouse](docs/resources/source_clickhouse.md)
* [airbyte_source_clickup_api](docs/resources/source_clickup_api.md)
* [airbyte_source_clockify](docs/resources/source_clockify.md)
* [airbyte_source_close_com](docs/resources/source_close_com.md)
* [airbyte_source_coda](docs/resources/source_coda.md)
* [airbyte_source_coin_api](docs/resources/source_coin_api.md)
* [airbyte_source_coinmarketcap](docs/resources/source_coinmarketcap.md)
* [airbyte_source_configcat](docs/resources/source_configcat.md)
* [airbyte_source_confluence](docs/resources/source_confluence.md)
* [airbyte_source_convex](docs/resources/source_convex.md)
* [airbyte_source_datadog](docs/resources/source_datadog.md)
* [airbyte_source_datascope](docs/resources/source_datascope.md)
* [airbyte_source_dbt](docs/resources/source_dbt.md)
* [airbyte_source_delighted](docs/resources/source_delighted.md)
* [airbyte_source_dixa](docs/resources/source_dixa.md)
* [airbyte_source_dockerhub](docs/resources/source_dockerhub.md)
* [airbyte_source_dremio](docs/resources/source_dremio.md)
* [airbyte_source_dynamodb](docs/resources/source_dynamodb.md)
* [airbyte_source_emailoctopus](docs/resources/source_emailoctopus.md)
* [airbyte_source_exchange_rates](docs/resources/source_exchange_rates.md)
* [airbyte_source_ezofficeinventory](docs/resources/source_ezofficeinventory.md)
* [airbyte_source_facebook_marketing](docs/resources/source_facebook_marketing.md)
* [airbyte_source_faker](docs/resources/source_faker.md)
* [airbyte_source_fauna](docs/resources/source_fauna.md)
* [airbyte_source_file](docs/resources/source_file.md)
* [airbyte_source_firebolt](docs/resources/source_firebolt.md)
* [airbyte_source_fleetio](docs/resources/source_fleetio.md)
* [airbyte_source_freshcaller](docs/resources/source_freshcaller.md)
* [airbyte_source_freshdesk](docs/resources/source_freshdesk.md)
* [airbyte_source_freshsales](docs/resources/source_freshsales.md)
* [airbyte_source_front](docs/resources/source_front.md)
* [airbyte_source_gainsight_px](docs/resources/source_gainsight_px.md)
* [airbyte_source_gcs](docs/resources/source_gcs.md)
* [airbyte_source_getlago](docs/resources/source_getlago.md)
* [airbyte_source_github](docs/resources/source_github.md)
* [airbyte_source_gitlab](docs/resources/source_gitlab.md)
* [airbyte_source_glassfrog](docs/resources/source_glassfrog.md)
* [airbyte_source_gnews](docs/resources/source_gnews.md)
* [airbyte_source_goldcast](docs/resources/source_goldcast.md)
* [airbyte_source_google_ads](docs/resources/source_google_ads.md)
* [airbyte_source_google_analytics_data_api](docs/resources/source_google_analytics_data_api.md)
* [airbyte_source_google_directory](docs/resources/source_google_directory.md)
* [airbyte_source_google_drive](docs/resources/source_google_drive.md)
* [airbyte_source_google_pagespeed_insights](docs/resources/source_google_pagespeed_insights.md)
* [airbyte_source_google_search_console](docs/resources/source_google_search_console.md)
* [airbyte_source_google_sheets](docs/resources/source_google_sheets.md)
* [airbyte_source_google_tasks](docs/resources/source_google_tasks.md)
* [airbyte_source_google_webfonts](docs/resources/source_google_webfonts.md)
* [airbyte_source_greenhouse](docs/resources/source_greenhouse.md)
* [airbyte_source_gridly](docs/resources/source_gridly.md)
* [airbyte_source_guru](docs/resources/source_guru.md)
* [airbyte_source_hardcoded_records](docs/resources/source_hardcoded_records.md)
* [airbyte_source_harvest](docs/resources/source_harvest.md)
* [airbyte_source_height](docs/resources/source_height.md)
* [airbyte_source_hibob](docs/resources/source_hibob.md)
* [airbyte_source_high_level](docs/resources/source_high_level.md)
* [airbyte_source_hubplanner](docs/resources/source_hubplanner.md)
* [airbyte_source_hubspot](docs/resources/source_hubspot.md)
* [airbyte_source_insightly](docs/resources/source_insightly.md)
* [airbyte_source_instagram](docs/resources/source_instagram.md)
* [airbyte_source_instatus](docs/resources/source_instatus.md)
* [airbyte_source_intercom](docs/resources/source_intercom.md)
* [airbyte_source_ip2whois](docs/resources/source_ip2whois.md)
* [airbyte_source_iterable](docs/resources/source_iterable.md)
* [airbyte_source_jira](docs/resources/source_jira.md)
* [airbyte_source_jotform](docs/resources/source_jotform.md)
* [airbyte_source_k6_cloud](docs/resources/source_k6_cloud.md)
* [airbyte_source_klarna](docs/resources/source_klarna.md)
* [airbyte_source_klaviyo](docs/resources/source_klaviyo.md)
* [airbyte_source_kyve](docs/resources/source_kyve.md)
* [airbyte_source_launchdarkly](docs/resources/source_launchdarkly.md)
* [airbyte_source_leadfeeder](docs/resources/source_leadfeeder.md)
* [airbyte_source_lemlist](docs/resources/source_lemlist.md)
* [airbyte_source_lever_hiring](docs/resources/source_lever_hiring.md)
* [airbyte_source_linkedin_ads](docs/resources/source_linkedin_ads.md)
* [airbyte_source_linkedin_pages](docs/resources/source_linkedin_pages.md)
* [airbyte_source_linnworks](docs/resources/source_linnworks.md)
* [airbyte_source_lokalise](docs/resources/source_lokalise.md)
* [airbyte_source_looker](docs/resources/source_looker.md)
* [airbyte_source_luma](docs/resources/source_luma.md)
* [airbyte_source_mailchimp](docs/resources/source_mailchimp.md)
* [airbyte_source_mailgun](docs/resources/source_mailgun.md)
* [airbyte_source_mailjet_sms](docs/resources/source_mailjet_sms.md)
* [airbyte_source_marketo](docs/resources/source_marketo.md)
* [airbyte_source_metabase](docs/resources/source_metabase.md)
* [airbyte_source_microsoft_onedrive](docs/resources/source_microsoft_onedrive.md)
* [airbyte_source_microsoft_sharepoint](docs/resources/source_microsoft_sharepoint.md)
* [airbyte_source_microsoft_teams](docs/resources/source_microsoft_teams.md)
* [airbyte_source_mixpanel](docs/resources/source_mixpanel.md)
* [airbyte_source_monday](docs/resources/source_monday.md)
* [airbyte_source_mongodb_v2](docs/resources/source_mongodb_v2.md)
* [airbyte_source_mssql](docs/resources/source_mssql.md)
* [airbyte_source_my_hours](docs/resources/source_my_hours.md)
* [airbyte_source_mysql](docs/resources/source_mysql.md)
* [airbyte_source_netsuite](docs/resources/source_netsuite.md)
* [airbyte_source_northpass_lms](docs/resources/source_northpass_lms.md)
* [airbyte_source_notion](docs/resources/source_notion.md)
* [airbyte_source_nylas](docs/resources/source_nylas.md)
* [airbyte_source_nytimes](docs/resources/source_nytimes.md)
* [airbyte_source_okta](docs/resources/source_okta.md)
* [airbyte_source_omnisend](docs/resources/source_omnisend.md)
* [airbyte_source_onesignal](docs/resources/source_onesignal.md)
* [airbyte_source_oracle](docs/resources/source_oracle.md)
* [airbyte_source_orb](docs/resources/source_orb.md)
* [airbyte_source_outbrain_amplify](docs/resources/source_outbrain_amplify.md)
* [airbyte_source_outreach](docs/resources/source_outreach.md)
* [airbyte_source_paypal_transaction](docs/resources/source_paypal_transaction.md)
* [airbyte_source_paystack](docs/resources/source_paystack.md)
* [airbyte_source_pendo](docs/resources/source_pendo.md)
* [airbyte_source_pennylane](docs/resources/source_pennylane.md)
* [airbyte_source_persistiq](docs/resources/source_persistiq.md)
* [airbyte_source_pexels_api](docs/resources/source_pexels_api.md)
* [airbyte_source_picqer](docs/resources/source_picqer.md)
* [airbyte_source_pinterest](docs/resources/source_pinterest.md)
* [airbyte_source_pipedrive](docs/resources/source_pipedrive.md)
* [airbyte_source_piwik](docs/resources/source_piwik.md)
* [airbyte_source_planhat](docs/resources/source_planhat.md)
* [airbyte_source_pocket](docs/resources/source_pocket.md)
* [airbyte_source_pokeapi](docs/resources/source_pokeapi.md)
* [airbyte_source_polygon_stock_api](docs/resources/source_polygon_stock_api.md)
* [airbyte_source_postgres](docs/resources/source_postgres.md)
* [airbyte_source_posthog](docs/resources/source_posthog.md)
* [airbyte_source_postmarkapp](docs/resources/source_postmarkapp.md)
* [airbyte_source_prestashop](docs/resources/source_prestashop.md)
* [airbyte_source_productboard](docs/resources/source_productboard.md)
* [airbyte_source_productive](docs/resources/source_productive.md)
* [airbyte_source_pypi](docs/resources/source_pypi.md)
* [airbyte_source_qualaroo](docs/resources/source_qualaroo.md)
* [airbyte_source_railz](docs/resources/source_railz.md)
* [airbyte_source_recharge](docs/resources/source_recharge.md)
* [airbyte_source_recreation](docs/resources/source_recreation.md)
* [airbyte_source_recruitee](docs/resources/source_recruitee.md)
* [airbyte_source_recurly](docs/resources/source_recurly.md)
* [airbyte_source_reddit](docs/resources/source_reddit.md)
* [airbyte_source_redshift](docs/resources/source_redshift.md)
* [airbyte_source_retently](docs/resources/source_retently.md)
* [airbyte_source_rki_covid](docs/resources/source_rki_covid.md)
* [airbyte_source_rss](docs/resources/source_rss.md)
* [airbyte_source_s3](docs/resources/source_s3.md)
* [airbyte_source_salesforce](docs/resources/source_salesforce.md)
* [airbyte_source_salesloft](docs/resources/source_salesloft.md)
* [airbyte_source_sap_fieldglass](docs/resources/source_sap_fieldglass.md)
* [airbyte_source_savvycal](docs/resources/source_savvycal.md)
* [airbyte_source_scryfall](docs/resources/source_scryfall.md)
* [airbyte_source_secoda](docs/resources/source_secoda.md)
* [airbyte_source_sendgrid](docs/resources/source_sendgrid.md)
* [airbyte_source_sendinblue](docs/resources/source_sendinblue.md)
* [airbyte_source_senseforce](docs/resources/source_senseforce.md)
* [airbyte_source_sentry](docs/resources/source_sentry.md)
* [airbyte_source_sftp](docs/resources/source_sftp.md)
* [airbyte_source_sftp_bulk](docs/resources/source_sftp_bulk.md)
* [airbyte_source_shopify](docs/resources/source_shopify.md)
* [airbyte_source_shortcut](docs/resources/source_shortcut.md)
* [airbyte_source_shortio](docs/resources/source_shortio.md)
* [airbyte_source_slack](docs/resources/source_slack.md)
* [airbyte_source_smaily](docs/resources/source_smaily.md)
* [airbyte_source_smartengage](docs/resources/source_smartengage.md)
* [airbyte_source_smartsheets](docs/resources/source_smartsheets.md)
* [airbyte_source_snapchat_marketing](docs/resources/source_snapchat_marketing.md)
* [airbyte_source_snowflake](docs/resources/source_snowflake.md)
* [airbyte_source_sonar_cloud](docs/resources/source_sonar_cloud.md)
* [airbyte_source_spacex_api](docs/resources/source_spacex_api.md)
* [airbyte_source_square](docs/resources/source_square.md)
* [airbyte_source_strava](docs/resources/source_strava.md)
* [airbyte_source_stripe](docs/resources/source_stripe.md)
* [airbyte_source_surveymonkey](docs/resources/source_surveymonkey.md)
* [airbyte_source_survey_sparrow](docs/resources/source_survey_sparrow.md)
* [airbyte_source_survicate](docs/resources/source_survicate.md)
* [airbyte_source_teamwork](docs/resources/source_teamwork.md)
* [airbyte_source_tempo](docs/resources/source_tempo.md)
* [airbyte_source_the_guardian_api](docs/resources/source_the_guardian_api.md)
* [airbyte_source_tiktok_marketing](docs/resources/source_tiktok_marketing.md)
* [airbyte_source_trello](docs/resources/source_trello.md)
* [airbyte_source_trustpilot](docs/resources/source_trustpilot.md)
* [airbyte_source_tvmaze_schedule](docs/resources/source_tvmaze_schedule.md)
* [airbyte_source_twilio](docs/resources/source_twilio.md)
* [airbyte_source_twilio_taskrouter](docs/resources/source_twilio_taskrouter.md)
* [airbyte_source_twitter](docs/resources/source_twitter.md)
* [airbyte_source_typeform](docs/resources/source_typeform.md)
* [airbyte_source_us_census](docs/resources/source_us_census.md)
* [airbyte_source_vantage](docs/resources/source_vantage.md)
* [airbyte_source_webflow](docs/resources/source_webflow.md)
* [airbyte_source_when_i_work](docs/resources/source_when_i_work.md)
* [airbyte_source_whisky_hunter](docs/resources/source_whisky_hunter.md)
* [airbyte_source_wikipedia_pageviews](docs/resources/source_wikipedia_pageviews.md)
* [airbyte_source_woocommerce](docs/resources/source_woocommerce.md)
* [airbyte_source_xkcd](docs/resources/source_xkcd.md)
* [airbyte_source_yandex_metrica](docs/resources/source_yandex_metrica.md)
* [airbyte_source_yotpo](docs/resources/source_yotpo.md)
* [airbyte_source_youtube_analytics](docs/resources/source_youtube_analytics.md)
* [airbyte_source_zendesk_chat](docs/resources/source_zendesk_chat.md)
* [airbyte_source_zendesk_sunshine](docs/resources/source_zendesk_sunshine.md)
* [airbyte_source_zendesk_support](docs/resources/source_zendesk_support.md)
* [airbyte_source_zendesk_talk](docs/resources/source_zendesk_talk.md)
* [airbyte_source_zenloop](docs/resources/source_zenloop.md)
* [airbyte_source_zoho_crm](docs/resources/source_zoho_crm.md)
* [airbyte_source_zoom](docs/resources/source_zoom.md)
* [airbyte_source_definition](docs/resources/source_definition.md)
* [airbyte_workspace](docs/resources/workspace.md)

### Data Sources

* [airbyte_connection](docs/data-sources/connection.md)
* [airbyte_connections](docs/data-sources/connections.md)
* [airbyte_declarative_source_definition](docs/data-sources/declarative_source_definition.md)
* [airbyte_destination](docs/data-sources/destination.md)
* [airbyte_destination_astra](docs/data-sources/destination_astra.md)
* [airbyte_destination_aws_datalake](docs/data-sources/destination_aws_datalake.md)
* [airbyte_destination_azure_blob_storage](docs/data-sources/destination_azure_blob_storage.md)
* [airbyte_destination_bigquery](docs/data-sources/destination_bigquery.md)
* [airbyte_destination_clickhouse](docs/data-sources/destination_clickhouse.md)
* [airbyte_destination_convex](docs/data-sources/destination_convex.md)
* [airbyte_destination_databricks](docs/data-sources/destination_databricks.md)
* [airbyte_destination_duckdb](docs/data-sources/destination_duckdb.md)
* [airbyte_destination_dynamodb](docs/data-sources/destination_dynamodb.md)
* [airbyte_destination_elasticsearch](docs/data-sources/destination_elasticsearch.md)
* [airbyte_destination_firebolt](docs/data-sources/destination_firebolt.md)
* [airbyte_destination_firestore](docs/data-sources/destination_firestore.md)
* [airbyte_destination_gcs](docs/data-sources/destination_gcs.md)
* [airbyte_destination_google_sheets](docs/data-sources/destination_google_sheets.md)
* [airbyte_destination_milvus](docs/data-sources/destination_milvus.md)
* [airbyte_destination_mongodb](docs/data-sources/destination_mongodb.md)
* [airbyte_destination_mssql](docs/data-sources/destination_mssql.md)
* [airbyte_destination_mysql](docs/data-sources/destination_mysql.md)
* [airbyte_destination_oracle](docs/data-sources/destination_oracle.md)
* [airbyte_destination_pgvector](docs/data-sources/destination_pgvector.md)
* [airbyte_destination_pinecone](docs/data-sources/destination_pinecone.md)
* [airbyte_destination_postgres](docs/data-sources/destination_postgres.md)
* [airbyte_destination_pubsub](docs/data-sources/destination_pubsub.md)
* [airbyte_destination_qdrant](docs/data-sources/destination_qdrant.md)
* [airbyte_destination_redis](docs/data-sources/destination_redis.md)
* [airbyte_destination_redshift](docs/data-sources/destination_redshift.md)
* [airbyte_destination_s3](docs/data-sources/destination_s3.md)
* [airbyte_destination_sftp_json](docs/data-sources/destination_sftp_json.md)
* [airbyte_destination_snowflake](docs/data-sources/destination_snowflake.md)
* [airbyte_destination_snowflake_cortex](docs/data-sources/destination_snowflake_cortex.md)
* [airbyte_destination_teradata](docs/data-sources/destination_teradata.md)
* [airbyte_destination_timeplus](docs/data-sources/destination_timeplus.md)
* [airbyte_destination_typesense](docs/data-sources/destination_typesense.md)
* [airbyte_destination_vectara](docs/data-sources/destination_vectara.md)
* [airbyte_destination_weaviate](docs/data-sources/destination_weaviate.md)
* [airbyte_destination_yellowbrick](docs/data-sources/destination_yellowbrick.md)
* [airbyte_destination_definition](docs/data-sources/destination_definition.md)
* [airbyte_permission](docs/data-sources/permission.md)
* [airbyte_source](docs/data-sources/source.md)
* [airbyte_source_aha](docs/data-sources/source_aha.md)
* [airbyte_source_airbyte](docs/data-sources/source_airbyte.md)
* [airbyte_source_aircall](docs/data-sources/source_aircall.md)
* [airbyte_source_airtable](docs/data-sources/source_airtable.md)
* [airbyte_source_amazon_ads](docs/data-sources/source_amazon_ads.md)
* [airbyte_source_amazon_seller_partner](docs/data-sources/source_amazon_seller_partner.md)
* [airbyte_source_amazon_sqs](docs/data-sources/source_amazon_sqs.md)
* [airbyte_source_amplitude](docs/data-sources/source_amplitude.md)
* [airbyte_source_apify_dataset](docs/data-sources/source_apify_dataset.md)
* [airbyte_source_appcues](docs/data-sources/source_appcues.md)
* [airbyte_source_appfigures](docs/data-sources/source_appfigures.md)
* [airbyte_source_appfollow](docs/data-sources/source_appfollow.md)
* [airbyte_source_asana](docs/data-sources/source_asana.md)
* [airbyte_source_auth0](docs/data-sources/source_auth0.md)
* [airbyte_source_aws_cloudtrail](docs/data-sources/source_aws_cloudtrail.md)
* [airbyte_source_azure_blob_storage](docs/data-sources/source_azure_blob_storage.md)
* [airbyte_source_azure_table](docs/data-sources/source_azure_table.md)
* [airbyte_source_bamboo_hr](docs/data-sources/source_bamboo_hr.md)
* [airbyte_source_basecamp](docs/data-sources/source_basecamp.md)
* [airbyte_source_bigquery](docs/data-sources/source_bigquery.md)
* [airbyte_source_bing_ads](docs/data-sources/source_bing_ads.md)
* [airbyte_source_bitly](docs/data-sources/source_bitly.md)
* [airbyte_source_braintree](docs/data-sources/source_braintree.md)
* [airbyte_source_braze](docs/data-sources/source_braze.md)
* [airbyte_source_breezy_hr](docs/data-sources/source_breezy_hr.md)
* [airbyte_source_brevo](docs/data-sources/source_brevo.md)
* [airbyte_source_buildkite](docs/data-sources/source_buildkite.md)
* [airbyte_source_buzzsprout](docs/data-sources/source_buzzsprout.md)
* [airbyte_source_calendly](docs/data-sources/source_calendly.md)
* [airbyte_source_canny](docs/data-sources/source_canny.md)
* [airbyte_source_cart](docs/data-sources/source_cart.md)
* [airbyte_source_chameleon](docs/data-sources/source_chameleon.md)
* [airbyte_source_chargebee](docs/data-sources/source_chargebee.md)
* [airbyte_source_chartmogul](docs/data-sources/source_chartmogul.md)
* [airbyte_source_cimis](docs/data-sources/source_cimis.md)
* [airbyte_source_clazar](docs/data-sources/source_clazar.md)
* [airbyte_source_clickhouse](docs/data-sources/source_clickhouse.md)
* [airbyte_source_clickup_api](docs/data-sources/source_clickup_api.md)
* [airbyte_source_clockify](docs/data-sources/source_clockify.md)
* [airbyte_source_close_com](docs/data-sources/source_close_com.md)
* [airbyte_source_coda](docs/data-sources/source_coda.md)
* [airbyte_source_coin_api](docs/data-sources/source_coin_api.md)
* [airbyte_source_coinmarketcap](docs/data-sources/source_coinmarketcap.md)
* [airbyte_source_configcat](docs/data-sources/source_configcat.md)
* [airbyte_source_confluence](docs/data-sources/source_confluence.md)
* [airbyte_source_convex](docs/data-sources/source_convex.md)
* [airbyte_source_datadog](docs/data-sources/source_datadog.md)
* [airbyte_source_datascope](docs/data-sources/source_datascope.md)
* [airbyte_source_dbt](docs/data-sources/source_dbt.md)
* [airbyte_source_delighted](docs/data-sources/source_delighted.md)
* [airbyte_source_dixa](docs/data-sources/source_dixa.md)
* [airbyte_source_dockerhub](docs/data-sources/source_dockerhub.md)
* [airbyte_source_dremio](docs/data-sources/source_dremio.md)
* [airbyte_source_dynamodb](docs/data-sources/source_dynamodb.md)
* [airbyte_source_emailoctopus](docs/data-sources/source_emailoctopus.md)
* [airbyte_source_exchange_rates](docs/data-sources/source_exchange_rates.md)
* [airbyte_source_ezofficeinventory](docs/data-sources/source_ezofficeinventory.md)
* [airbyte_source_facebook_marketing](docs/data-sources/source_facebook_marketing.md)
* [airbyte_source_faker](docs/data-sources/source_faker.md)
* [airbyte_source_fauna](docs/data-sources/source_fauna.md)
* [airbyte_source_file](docs/data-sources/source_file.md)
* [airbyte_source_firebolt](docs/data-sources/source_firebolt.md)
* [airbyte_source_fleetio](docs/data-sources/source_fleetio.md)
* [airbyte_source_freshcaller](docs/data-sources/source_freshcaller.md)
* [airbyte_source_freshdesk](docs/data-sources/source_freshdesk.md)
* [airbyte_source_freshsales](docs/data-sources/source_freshsales.md)
* [airbyte_source_front](docs/data-sources/source_front.md)
* [airbyte_source_gainsight_px](docs/data-sources/source_gainsight_px.md)
* [airbyte_source_gcs](docs/data-sources/source_gcs.md)
* [airbyte_source_getlago](docs/data-sources/source_getlago.md)
* [airbyte_source_github](docs/data-sources/source_github.md)
* [airbyte_source_gitlab](docs/data-sources/source_gitlab.md)
* [airbyte_source_glassfrog](docs/data-sources/source_glassfrog.md)
* [airbyte_source_gnews](docs/data-sources/source_gnews.md)
* [airbyte_source_goldcast](docs/data-sources/source_goldcast.md)
* [airbyte_source_google_ads](docs/data-sources/source_google_ads.md)
* [airbyte_source_google_analytics_data_api](docs/data-sources/source_google_analytics_data_api.md)
* [airbyte_source_google_directory](docs/data-sources/source_google_directory.md)
* [airbyte_source_google_drive](docs/data-sources/source_google_drive.md)
* [airbyte_source_google_pagespeed_insights](docs/data-sources/source_google_pagespeed_insights.md)
* [airbyte_source_google_search_console](docs/data-sources/source_google_search_console.md)
* [airbyte_source_google_sheets](docs/data-sources/source_google_sheets.md)
* [airbyte_source_google_tasks](docs/data-sources/source_google_tasks.md)
* [airbyte_source_google_webfonts](docs/data-sources/source_google_webfonts.md)
* [airbyte_source_greenhouse](docs/data-sources/source_greenhouse.md)
* [airbyte_source_gridly](docs/data-sources/source_gridly.md)
* [airbyte_source_guru](docs/data-sources/source_guru.md)
* [airbyte_source_hardcoded_records](docs/data-sources/source_hardcoded_records.md)
* [airbyte_source_harvest](docs/data-sources/source_harvest.md)
* [airbyte_source_height](docs/data-sources/source_height.md)
* [airbyte_source_hibob](docs/data-sources/source_hibob.md)
* [airbyte_source_high_level](docs/data-sources/source_high_level.md)
* [airbyte_source_hubplanner](docs/data-sources/source_hubplanner.md)
* [airbyte_source_hubspot](docs/data-sources/source_hubspot.md)
* [airbyte_source_insightly](docs/data-sources/source_insightly.md)
* [airbyte_source_instagram](docs/data-sources/source_instagram.md)
* [airbyte_source_instatus](docs/data-sources/source_instatus.md)
* [airbyte_source_intercom](docs/data-sources/source_intercom.md)
* [airbyte_source_ip2whois](docs/data-sources/source_ip2whois.md)
* [airbyte_source_iterable](docs/data-sources/source_iterable.md)
* [airbyte_source_jira](docs/data-sources/source_jira.md)
* [airbyte_source_jotform](docs/data-sources/source_jotform.md)
* [airbyte_source_k6_cloud](docs/data-sources/source_k6_cloud.md)
* [airbyte_source_klarna](docs/data-sources/source_klarna.md)
* [airbyte_source_klaviyo](docs/data-sources/source_klaviyo.md)
* [airbyte_source_kyve](docs/data-sources/source_kyve.md)
* [airbyte_source_launchdarkly](docs/data-sources/source_launchdarkly.md)
* [airbyte_source_leadfeeder](docs/data-sources/source_leadfeeder.md)
* [airbyte_source_lemlist](docs/data-sources/source_lemlist.md)
* [airbyte_source_lever_hiring](docs/data-sources/source_lever_hiring.md)
* [airbyte_source_linkedin_ads](docs/data-sources/source_linkedin_ads.md)
* [airbyte_source_linkedin_pages](docs/data-sources/source_linkedin_pages.md)
* [airbyte_source_linnworks](docs/data-sources/source_linnworks.md)
* [airbyte_source_lokalise](docs/data-sources/source_lokalise.md)
* [airbyte_source_looker](docs/data-sources/source_looker.md)
* [airbyte_source_luma](docs/data-sources/source_luma.md)
* [airbyte_source_mailchimp](docs/data-sources/source_mailchimp.md)
* [airbyte_source_mailgun](docs/data-sources/source_mailgun.md)
* [airbyte_source_mailjet_sms](docs/data-sources/source_mailjet_sms.md)
* [airbyte_source_marketo](docs/data-sources/source_marketo.md)
* [airbyte_source_metabase](docs/data-sources/source_metabase.md)
* [airbyte_source_microsoft_onedrive](docs/data-sources/source_microsoft_onedrive.md)
* [airbyte_source_microsoft_sharepoint](docs/data-sources/source_microsoft_sharepoint.md)
* [airbyte_source_microsoft_teams](docs/data-sources/source_microsoft_teams.md)
* [airbyte_source_mixpanel](docs/data-sources/source_mixpanel.md)
* [airbyte_source_monday](docs/data-sources/source_monday.md)
* [airbyte_source_mongodb_v2](docs/data-sources/source_mongodb_v2.md)
* [airbyte_source_mssql](docs/data-sources/source_mssql.md)
* [airbyte_source_my_hours](docs/data-sources/source_my_hours.md)
* [airbyte_source_mysql](docs/data-sources/source_mysql.md)
* [airbyte_source_netsuite](docs/data-sources/source_netsuite.md)
* [airbyte_source_northpass_lms](docs/data-sources/source_northpass_lms.md)
* [airbyte_source_notion](docs/data-sources/source_notion.md)
* [airbyte_source_nylas](docs/data-sources/source_nylas.md)
* [airbyte_source_nytimes](docs/data-sources/source_nytimes.md)
* [airbyte_source_okta](docs/data-sources/source_okta.md)
* [airbyte_source_omnisend](docs/data-sources/source_omnisend.md)
* [airbyte_source_onesignal](docs/data-sources/source_onesignal.md)
* [airbyte_source_oracle](docs/data-sources/source_oracle.md)
* [airbyte_source_orb](docs/data-sources/source_orb.md)
* [airbyte_source_outbrain_amplify](docs/data-sources/source_outbrain_amplify.md)
* [airbyte_source_outreach](docs/data-sources/source_outreach.md)
* [airbyte_source_paypal_transaction](docs/data-sources/source_paypal_transaction.md)
* [airbyte_source_paystack](docs/data-sources/source_paystack.md)
* [airbyte_source_pendo](docs/data-sources/source_pendo.md)
* [airbyte_source_pennylane](docs/data-sources/source_pennylane.md)
* [airbyte_source_persistiq](docs/data-sources/source_persistiq.md)
* [airbyte_source_pexels_api](docs/data-sources/source_pexels_api.md)
* [airbyte_source_picqer](docs/data-sources/source_picqer.md)
* [airbyte_source_pinterest](docs/data-sources/source_pinterest.md)
* [airbyte_source_pipedrive](docs/data-sources/source_pipedrive.md)
* [airbyte_source_piwik](docs/data-sources/source_piwik.md)
* [airbyte_source_planhat](docs/data-sources/source_planhat.md)
* [airbyte_source_pocket](docs/data-sources/source_pocket.md)
* [airbyte_source_pokeapi](docs/data-sources/source_pokeapi.md)
* [airbyte_source_polygon_stock_api](docs/data-sources/source_polygon_stock_api.md)
* [airbyte_source_postgres](docs/data-sources/source_postgres.md)
* [airbyte_source_posthog](docs/data-sources/source_posthog.md)
* [airbyte_source_postmarkapp](docs/data-sources/source_postmarkapp.md)
* [airbyte_source_prestashop](docs/data-sources/source_prestashop.md)
* [airbyte_source_productboard](docs/data-sources/source_productboard.md)
* [airbyte_source_productive](docs/data-sources/source_productive.md)
* [airbyte_source_pypi](docs/data-sources/source_pypi.md)
* [airbyte_source_qualaroo](docs/data-sources/source_qualaroo.md)
* [airbyte_source_railz](docs/data-sources/source_railz.md)
* [airbyte_source_recharge](docs/data-sources/source_recharge.md)
* [airbyte_source_recreation](docs/data-sources/source_recreation.md)
* [airbyte_source_recruitee](docs/data-sources/source_recruitee.md)
* [airbyte_source_recurly](docs/data-sources/source_recurly.md)
* [airbyte_source_reddit](docs/data-sources/source_reddit.md)
* [airbyte_source_redshift](docs/data-sources/source_redshift.md)
* [airbyte_source_retently](docs/data-sources/source_retently.md)
* [airbyte_source_rki_covid](docs/data-sources/source_rki_covid.md)
* [airbyte_source_rss](docs/data-sources/source_rss.md)
* [airbyte_source_s3](docs/data-sources/source_s3.md)
* [airbyte_source_salesforce](docs/data-sources/source_salesforce.md)
* [airbyte_source_salesloft](docs/data-sources/source_salesloft.md)
* [airbyte_source_sap_fieldglass](docs/data-sources/source_sap_fieldglass.md)
* [airbyte_source_savvycal](docs/data-sources/source_savvycal.md)
* [airbyte_source_scryfall](docs/data-sources/source_scryfall.md)
* [airbyte_source_secoda](docs/data-sources/source_secoda.md)
* [airbyte_source_sendgrid](docs/data-sources/source_sendgrid.md)
* [airbyte_source_sendinblue](docs/data-sources/source_sendinblue.md)
* [airbyte_source_senseforce](docs/data-sources/source_senseforce.md)
* [airbyte_source_sentry](docs/data-sources/source_sentry.md)
* [airbyte_source_sftp](docs/data-sources/source_sftp.md)
* [airbyte_source_sftp_bulk](docs/data-sources/source_sftp_bulk.md)
* [airbyte_source_shopify](docs/data-sources/source_shopify.md)
* [airbyte_source_shortcut](docs/data-sources/source_shortcut.md)
* [airbyte_source_shortio](docs/data-sources/source_shortio.md)
* [airbyte_source_slack](docs/data-sources/source_slack.md)
* [airbyte_source_smaily](docs/data-sources/source_smaily.md)
* [airbyte_source_smartengage](docs/data-sources/source_smartengage.md)
* [airbyte_source_smartsheets](docs/data-sources/source_smartsheets.md)
* [airbyte_source_snapchat_marketing](docs/data-sources/source_snapchat_marketing.md)
* [airbyte_source_snowflake](docs/data-sources/source_snowflake.md)
* [airbyte_source_sonar_cloud](docs/data-sources/source_sonar_cloud.md)
* [airbyte_source_spacex_api](docs/data-sources/source_spacex_api.md)
* [airbyte_source_square](docs/data-sources/source_square.md)
* [airbyte_source_strava](docs/data-sources/source_strava.md)
* [airbyte_source_stripe](docs/data-sources/source_stripe.md)
* [airbyte_source_surveymonkey](docs/data-sources/source_surveymonkey.md)
* [airbyte_source_survey_sparrow](docs/data-sources/source_survey_sparrow.md)
* [airbyte_source_survicate](docs/data-sources/source_survicate.md)
* [airbyte_source_teamwork](docs/data-sources/source_teamwork.md)
* [airbyte_source_tempo](docs/data-sources/source_tempo.md)
* [airbyte_source_the_guardian_api](docs/data-sources/source_the_guardian_api.md)
* [airbyte_source_tiktok_marketing](docs/data-sources/source_tiktok_marketing.md)
* [airbyte_source_trello](docs/data-sources/source_trello.md)
* [airbyte_source_trustpilot](docs/data-sources/source_trustpilot.md)
* [airbyte_source_tvmaze_schedule](docs/data-sources/source_tvmaze_schedule.md)
* [airbyte_source_twilio](docs/data-sources/source_twilio.md)
* [airbyte_source_twilio_taskrouter](docs/data-sources/source_twilio_taskrouter.md)
* [airbyte_source_twitter](docs/data-sources/source_twitter.md)
* [airbyte_source_typeform](docs/data-sources/source_typeform.md)
* [airbyte_source_us_census](docs/data-sources/source_us_census.md)
* [airbyte_source_vantage](docs/data-sources/source_vantage.md)
* [airbyte_source_webflow](docs/data-sources/source_webflow.md)
* [airbyte_source_when_i_work](docs/data-sources/source_when_i_work.md)
* [airbyte_source_whisky_hunter](docs/data-sources/source_whisky_hunter.md)
* [airbyte_source_wikipedia_pageviews](docs/data-sources/source_wikipedia_pageviews.md)
* [airbyte_source_woocommerce](docs/data-sources/source_woocommerce.md)
* [airbyte_source_xkcd](docs/data-sources/source_xkcd.md)
* [airbyte_source_yandex_metrica](docs/data-sources/source_yandex_metrica.md)
* [airbyte_source_yotpo](docs/data-sources/source_yotpo.md)
* [airbyte_source_youtube_analytics](docs/data-sources/source_youtube_analytics.md)
* [airbyte_source_zendesk_chat](docs/data-sources/source_zendesk_chat.md)
* [airbyte_source_zendesk_sunshine](docs/data-sources/source_zendesk_sunshine.md)
* [airbyte_source_zendesk_support](docs/data-sources/source_zendesk_support.md)
* [airbyte_source_zendesk_talk](docs/data-sources/source_zendesk_talk.md)
* [airbyte_source_zenloop](docs/data-sources/source_zenloop.md)
* [airbyte_source_zoho_crm](docs/data-sources/source_zoho_crm.md)
* [airbyte_source_zoom](docs/data-sources/source_zoom.md)
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
