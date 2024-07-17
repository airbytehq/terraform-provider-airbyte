resource "airbyte_source_my_hours" "my_source_myhours" {
  configuration = {
    email           = "john@doe.com"
    logs_batch_size = 30
    password        = "...my_password..."
    start_date      = "2016-01-01"
  }
  definition_id = "26c4c104-f1db-4e3b-9f29-044775738476"
  name          = "Brooke Kihn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "18014d1f-2636-451b-b7f9-fe0e5e5f386d"
}