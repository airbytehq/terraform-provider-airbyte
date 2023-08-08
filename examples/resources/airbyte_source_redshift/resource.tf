resource "airbyte_source_redshift" "my_source_redshift" {
  configuration = {
    database        = "master"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5439
    schemas = [
      "...",
    ]
    source_type = "redshift"
    username    = "Elmer.Bradtke80"
  }
  name         = "Ms. Shelia Luettgen V"
  secret_id    = "...my_secret_id..."
  workspace_id = "4373e060-459b-4ebb-ad02-f2586bcf1525"
}