resource "airbyte_source_amazon_sqs" "my_source_amazonsqs" {
  configuration = {
    access_key           = "xxxxxHRNxxx3TBxxxxxx"
    attributes_to_return = "attr1,attr2"
    delete_messages      = false
    max_batch_size       = 5
    max_wait_time        = 5
    queue_url            = "https://sqs.eu-west-1.amazonaws.com/1234567890/my-example-queue"
    region               = "ap-southeast-2"
    secret_key           = "hu+qE5exxxxT6o/ZrKsxxxxxxBhxxXLexxxxxVKz"
    source_type          = "amazon-sqs"
    visibility_timeout   = 15
  }
  name         = "Cathy Kirlin"
  secret_id    = "...my_secret_id..."
  workspace_id = "29177dea-c646-4ecb-9734-09e3eb1e5a2b"
}