resource "airbyte_source_productboard" "my_source_productboard" {
  configuration = {
    access_token = "...my_access_token..."
    start_date   = "2022-06-14T05:22:42.363Z"
  }
  definition_id = "50f80fbc-595c-4377-bbcc-fe70cf147e29"
  name          = "Nichole Kling"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b2d7bbc2-90ef-400a-9537-2256fe50a2e7"
}