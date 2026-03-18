resource "airbyte_destination_mysql" "my_destination_mysql" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    database              = "...my_database..."
    disable_type_dedupe   = false
    host                  = "...my_host..."
    jdbc_url_params       = "...my_jdbc_url_params..."
    password              = "...my_password..."
    port                  = 3306
    raw_data_schema       = "...my_raw_data_schema..."
    tunnel_method = {
      no_tunnel = {
        # ...
      }
    }
    username = "...my_username..."
  }
  definition_id = "ca81ee7c-3163-4246-af40-094cc31e5e42"
  name          = "...my_name..."
  workspace_id  = "3c1b00ad-b0b5-47bb-93e0-65f72a419a35"
}