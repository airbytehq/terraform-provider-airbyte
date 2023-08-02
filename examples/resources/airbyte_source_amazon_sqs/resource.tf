resource "airbyte_source_amazon_sqs" "my_source_amazonsqs" {
    configuration = {
        access_key = "xxxxxHRNxxx3TBxxxxxx"
        attributes_to_return = "attr1,attr2"
        delete_messages = true
        max_batch_size = 5
        max_wait_time = 5
        queue_url = "https://sqs.eu-west-1.amazonaws.com/1234567890/my-example-queue"
        region = "us-east-2"
        secret_key = "hu+qE5exxxxT6o/ZrKsxxxxxxBhxxXLexxxxxVKz"
        source_type = "amazon-sqs"
        visibility_timeout = 15
    }
            name = "Billie Morar"
            workspace_id = "b30fcb33-ea05-45b1-97cd-44e2f52d82d3"
        }