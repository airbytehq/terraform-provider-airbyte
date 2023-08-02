resource "airbyte_destination_firebolt" "my_destination_firebolt" {
    configuration = {
        account = "...my_account..."
        database = "...my_database..."
        destination_type = "firebolt"
        engine = "...my_engine..."
        host = "api.app.firebolt.io"
        loading_method =     {
                aws_key_id = "...my_aws_key_id..."
                aws_key_secret = "...my_aws_key_secret..."
                method = "S3"
                s3_bucket = "...my_s3_bucket..."
                s3_region = "us-east-1"
            }
        password = "...my_password..."
        username = "username@email.com"
    }
            name = "Miss Dennis Friesen"
            workspace_id = "c366c8dd-6b14-4429-8747-4778a7bd466d"
        }