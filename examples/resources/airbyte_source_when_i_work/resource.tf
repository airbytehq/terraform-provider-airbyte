resource "airbyte_source_when_i_work" "my_source_wheniwork" {
  configuration = {
    email    = "Deshawn10@gmail.com"
    password = "...my_password..."
  }
  definition_id = "75a9064a-5032-4959-97b8-87bcaaeb3780"
  name          = "Sean Stehr"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7ca3ce9c-b3aa-45ee-b838-6c40c0bb623b"
}