resource "airbyte_source_outbrain_amplify" "my_source_outbrainamplify" {
  configuration = {
    credentials = {
      username_password = {
        password = "...my_password..."
        username = "...my_username..."
      }
    }
    end_date               = "...my_end_date..."
    geo_location_breakdown = "region"
    report_granularity     = "monthly"
    start_date             = "...my_start_date..."
  }
  definition_id = "10259945-d6ad-44fd-802a-f39a5ba64e1a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0bef4627-47e6-4baf-ad2c-6a8adf015e34"
}