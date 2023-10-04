resource "airbyte_source_amazon_sqs" "my_source_amazonsqs" {
  configuration = {
    access_key           = "xxxxxHRNxxx3TBxxxxxx"
    attributes_to_return = "attr1,attr2"
    delete_messages      = false
    max_batch_size       = 5
    max_wait_time        = 5
    queue_url            = "https://sqs.eu-west-1.amazonaws.com/1234567890/my-example-queue"
    region               = "eu-central-1"
    secret_key           = "hu+qE5exxxxT6o/ZrKsxxxxxxBhxxXLexxxxxVKz"
    visibility_timeout   = 15
  }
  name         = "Mr. Myrtle Crona"
  secret_id    = "...my_secret_id..."
  workspace_id = "b4de2c1a-7f28-48ad-bcde-3c9d6fa94b74"
}