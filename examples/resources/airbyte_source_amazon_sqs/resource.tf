resource "airbyte_source_amazon_sqs" "my_source_amazonsqs" {
  configuration = {
    access_key           = "xxxxxHRNxxx3TBxxxxxx"
    attributes_to_return = "attr1,attr2"
    delete_messages      = true
    max_batch_size       = 5
    max_wait_time        = 5
    queue_url            = "https://sqs.eu-west-1.amazonaws.com/1234567890/my-example-queue"
    region               = "il-central-1"
    secret_key           = "hu+qE5exxxxT6o/ZrKsxxxxxxBhxxXLexxxxxVKz"
    visibility_timeout   = 15
  }
  definition_id = "49b0bdf3-d5ca-496c-a335-4ae1d23c3d11"
  name          = "Amos Moore"
  secret_id     = "...my_secret_id..."
  workspace_id  = "df0d756d-8b0d-490d-af91-86ab63a7b2e3"
}