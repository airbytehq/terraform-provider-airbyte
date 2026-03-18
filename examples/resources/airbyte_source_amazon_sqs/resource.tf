resource "airbyte_source_amazon_sqs" "my_source_amazonsqs" {
  configuration = {
    access_key            = "xxxxxHRNxxx3TBxxxxxx"
    additional_properties = "{ \"see\": \"documentation\" }"
    attributes_to_return  = "attr1,attr2"
    max_batch_size        = 5
    max_wait_time         = 5
    queue_url             = "https://sqs.eu-west-1.amazonaws.com/1234567890/my-example-queue"
    region                = "us-east-1"
    secret_key            = "hu+qE5exxxxT6o/ZrKsxxxxxxBhxxXLexxxxxVKz"
    target                = "ReceiveMessage"
    visibility_timeout    = 20
  }
  definition_id = "983fd355-6bf3-4709-91b5-37afa391eeb6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d064f44a-5875-4cf2-8a32-a321d2eb3460"
}