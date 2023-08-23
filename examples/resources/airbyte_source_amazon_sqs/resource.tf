resource "airbyte_source_amazon_sqs" "my_source_amazonsqs" {
  configuration = {
    access_key           = "xxxxxHRNxxx3TBxxxxxx"
    attributes_to_return = "attr1,attr2"
    delete_messages      = true
    max_batch_size       = 5
    max_wait_time        = 5
    queue_url            = "https://sqs.eu-west-1.amazonaws.com/1234567890/my-example-queue"
    region               = "eu-south-1"
    secret_key           = "hu+qE5exxxxT6o/ZrKsxxxxxxBhxxXLexxxxxVKz"
    source_type          = "amazon-sqs"
    visibility_timeout   = 15
  }
  name         = "Rosemarie Kub"
  secret_id    = "...my_secret_id..."
  workspace_id = "259e3ea4-b519-47f9-a443-da7ce52b895c"
}