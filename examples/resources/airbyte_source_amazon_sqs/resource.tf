resource "airbyte_source_amazon_sqs" "my_source_amazonsqs" {
  configuration = {
    access_key           = "xxxxxHRNxxx3TBxxxxxx"
    attributes_to_return = "attr1,attr2"
    delete_messages      = true
    max_batch_size       = 5
    max_wait_time        = 5
    queue_url            = "https://sqs.eu-west-1.amazonaws.com/1234567890/my-example-queue"
    region               = "ap-northeast-2"
    secret_key           = "hu+qE5exxxxT6o/ZrKsxxxxxxBhxxXLexxxxxVKz"
    visibility_timeout   = 15
  }
  definition_id = "aa9ea927-cae7-4b29-885e-6b85628652e0"
  name          = "Emmett Labadie"
  secret_id     = "...my_secret_id..."
  workspace_id  = "21b517b1-6f1f-4884-abcd-5137451945c4"
}