resource "airbyte_source_rentcast" "my_source_rentcast" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    address               = "...my_address..."
    api_key               = "...my_api_key..."
    bath_rooms            = 4
    bedrooms              = 6.5
    city                  = "...my_city..."
    data_type             = "...my_data_type..."
    days_old              = "...my_days_old..."
    history_range         = "...my_history_range..."
    latitude              = "...my_latitude..."
    longitude             = "...my_longitude..."
    property_type         = "...my_property_type..."
    radius                = "...my_radius..."
    state                 = "...my_state..."
    status                = "...my_status..."
    zipcode               = "...my_zipcode..."
  }
  definition_id = "bfe52bf4-2ea5-49dd-9abb-b29c6b50de3d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "3f87ec5f-32c1-47a2-a7ac-1ceb39bed343"
}