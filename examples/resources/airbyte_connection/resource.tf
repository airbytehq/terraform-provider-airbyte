resource "airbyte_connection" "my_connection" {
    destination_id = "89bd9d8d-69a6-474e-8f46-7cc8796ed151"
            namespace_format = "${SOURCE_NAMESPACE}"
            source_id = "a05dfc2d-df7c-4c78-8a1b-a928fc816742"
        }