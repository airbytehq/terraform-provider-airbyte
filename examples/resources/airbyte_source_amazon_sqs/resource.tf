resource "airbyte_source_amazon_sqs" "my_source_amazonsqs" {
  configuration = {
    access_key           = "xxxxxHRNxxx3TBxxxxxx"
    attributes_to_return = "attr1,attr2"
    delete_messages      = true
    max_batch_size       = 5
    max_wait_time        = 5
    queue_url            = "https://sqs.eu-west-1.amazonaws.com/1234567890/my-example-queue"
    region               = "eu-south-2"
    secret_key           = "hu+qE5exxxxT6o/ZrKsxxxxxxBhxxXLexxxxxVKz"
    visibility_timeout   = 15
  }
  definition_id = "90fa7f8f-441b-458d-bc55-9a0bee1c5ff2"
  name          = "Tracy Donnelly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "20422616-84e7-43ef-a02c-915f597cf589"
}