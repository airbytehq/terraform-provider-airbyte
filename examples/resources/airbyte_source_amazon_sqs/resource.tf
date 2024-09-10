resource "airbyte_source_amazon_sqs" "my_source_amazonsqs" {
  configuration = {
    access_key           = "xxxxxHRNxxx3TBxxxxxx"
    attributes_to_return = "attr1,attr2"
    delete_messages      = false
    max_batch_size       = 5
    max_wait_time        = 5
    queue_url            = "https://sqs.eu-west-1.amazonaws.com/1234567890/my-example-queue"
    region               = "ap-northeast-1"
    secret_key           = "hu+qE5exxxxT6o/ZrKsxxxxxxBhxxXLexxxxxVKz"
    visibility_timeout   = 15
  }
  definition_id = "f83c21b5-17b1-46f1-b884-6bcd51374519"
  name          = "Renee Schamberger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "360526ae-8aa3-4c4f-a879-13b8668105e1"
}