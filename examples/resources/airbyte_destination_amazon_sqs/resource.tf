resource "airbyte_destination_amazon_sqs" "my_destination_amazonsqs" {
    configuration = {
        access_key = "xxxxxHRNxxx3TBxxxxxx"
        destination_type = "amazon-sqs"
        message_body_key = "myDataPath"
        message_delay = 15
        message_group_id = "my-fifo-group"
        queue_url = "https://sqs.eu-west-1.amazonaws.com/1234567890/my-example-queue"
        region = "eu-west-1"
        secret_key = "hu+qE5exxxxT6o/ZrKsxxxxxxBhxxXLexxxxxVKz"
    }
            name = "Edna Mante II"
            workspace_id = "929396fe-a759-46eb-90fa-aa2352c59559"
        }