resource "airbyte_source_amazon_sqs" "my_source_amazonsqs" {
  configuration = {
    access_key           = "xxxxxHRNxxx3TBxxxxxx"
    attributes_to_return = "attr1,attr2"
    delete_messages      = true
    max_batch_size       = 5
    max_wait_time        = 5
    queue_url            = "https://sqs.eu-west-1.amazonaws.com/1234567890/my-example-queue"
    region               = "eu-west-3"
    secret_key           = "hu+qE5exxxxT6o/ZrKsxxxxxxBhxxXLexxxxxVKz"
    visibility_timeout   = 15
  }
  definition_id = "d1d8bb57-bf00-41dd-b3cf-074d627d201b"
  name          = "Betsy Baumbach"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bb26e6b9-f25a-4a9f-8c7d-4107048d9ffe"
}