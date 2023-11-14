---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_destination_milvus Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  DestinationMilvus Resource
---

# airbyte_destination_milvus (Resource)

DestinationMilvus Resource

## Example Usage

```terraform
resource "airbyte_destination_milvus" "my_destination_milvus" {
  configuration = {
    destination_type = "milvus"
    embedding = {
      destination_milvus_embedding_cohere = {
        cohere_key = "...my_cohere_key..."
        mode       = "cohere"
      }
    }
    indexing = {
      auth = {
        destination_milvus_indexing_authentication_api_token = {
          mode  = "token"
          token = "...my_token..."
        }
      }
      collection   = "...my_collection..."
      db           = "...my_db..."
      host         = "https://my-instance.zone.zillizcloud.com"
      text_field   = "...my_text_field..."
      vector_field = "...my_vector_field..."
    }
    processing = {
      chunk_overlap = 3
      chunk_size    = 0
      metadata_fields = [
        "...",
      ]
      text_fields = [
        "...",
      ]
    }
  }
  name         = "Sherry Morar IV"
  workspace_id = "086a1840-394c-4260-b1f9-3f5f0642dac7"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `configuration` (Attributes) (see [below for nested schema](#nestedatt--configuration))
- `name` (String)
- `workspace_id` (String)

### Read-Only

- `destination_id` (String)
- `destination_type` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `destination_type` (String) must be one of ["milvus"]
- `embedding` (Attributes) Embedding configuration (see [below for nested schema](#nestedatt--configuration--embedding))
- `indexing` (Attributes) Indexing configuration (see [below for nested schema](#nestedatt--configuration--indexing))
- `processing` (Attributes) (see [below for nested schema](#nestedatt--configuration--processing))

<a id="nestedatt--configuration--embedding"></a>
### Nested Schema for `configuration.embedding`

Optional:

- `destination_milvus_embedding_cohere` (Attributes) Use the Cohere API to embed text. (see [below for nested schema](#nestedatt--configuration--embedding--destination_milvus_embedding_cohere))
- `destination_milvus_embedding_fake` (Attributes) Use a fake embedding made out of random vectors with 1536 embedding dimensions. This is useful for testing the data pipeline without incurring any costs. (see [below for nested schema](#nestedatt--configuration--embedding--destination_milvus_embedding_fake))
- `destination_milvus_embedding_from_field` (Attributes) Use a field in the record as the embedding. This is useful if you already have an embedding for your data and want to store it in the vector store. (see [below for nested schema](#nestedatt--configuration--embedding--destination_milvus_embedding_from_field))
- `destination_milvus_embedding_open_ai` (Attributes) Use the OpenAI API to embed text. This option is using the text-embedding-ada-002 model with 1536 embedding dimensions. (see [below for nested schema](#nestedatt--configuration--embedding--destination_milvus_embedding_open_ai))
- `destination_milvus_update_embedding_cohere` (Attributes) Use the Cohere API to embed text. (see [below for nested schema](#nestedatt--configuration--embedding--destination_milvus_update_embedding_cohere))
- `destination_milvus_update_embedding_fake` (Attributes) Use a fake embedding made out of random vectors with 1536 embedding dimensions. This is useful for testing the data pipeline without incurring any costs. (see [below for nested schema](#nestedatt--configuration--embedding--destination_milvus_update_embedding_fake))
- `destination_milvus_update_embedding_from_field` (Attributes) Use a field in the record as the embedding. This is useful if you already have an embedding for your data and want to store it in the vector store. (see [below for nested schema](#nestedatt--configuration--embedding--destination_milvus_update_embedding_from_field))
- `destination_milvus_update_embedding_open_ai` (Attributes) Use the OpenAI API to embed text. This option is using the text-embedding-ada-002 model with 1536 embedding dimensions. (see [below for nested schema](#nestedatt--configuration--embedding--destination_milvus_update_embedding_open_ai))

<a id="nestedatt--configuration--embedding--destination_milvus_embedding_cohere"></a>
### Nested Schema for `configuration.embedding.destination_milvus_embedding_cohere`

Required:

- `cohere_key` (String)

Optional:

- `mode` (String) must be one of ["cohere"]


<a id="nestedatt--configuration--embedding--destination_milvus_embedding_fake"></a>
### Nested Schema for `configuration.embedding.destination_milvus_embedding_fake`

Optional:

- `mode` (String) must be one of ["fake"]


<a id="nestedatt--configuration--embedding--destination_milvus_embedding_from_field"></a>
### Nested Schema for `configuration.embedding.destination_milvus_embedding_from_field`

Required:

- `dimensions` (Number) The number of dimensions the embedding model is generating
- `field_name` (String) Name of the field in the record that contains the embedding

Optional:

- `mode` (String) must be one of ["from_field"]


<a id="nestedatt--configuration--embedding--destination_milvus_embedding_open_ai"></a>
### Nested Schema for `configuration.embedding.destination_milvus_embedding_open_ai`

Required:

- `openai_key` (String)

Optional:

- `mode` (String) must be one of ["openai"]


<a id="nestedatt--configuration--embedding--destination_milvus_update_embedding_cohere"></a>
### Nested Schema for `configuration.embedding.destination_milvus_update_embedding_cohere`

Required:

- `cohere_key` (String)

Optional:

- `mode` (String) must be one of ["cohere"]


<a id="nestedatt--configuration--embedding--destination_milvus_update_embedding_fake"></a>
### Nested Schema for `configuration.embedding.destination_milvus_update_embedding_fake`

Optional:

- `mode` (String) must be one of ["fake"]


<a id="nestedatt--configuration--embedding--destination_milvus_update_embedding_from_field"></a>
### Nested Schema for `configuration.embedding.destination_milvus_update_embedding_from_field`

Required:

- `dimensions` (Number) The number of dimensions the embedding model is generating
- `field_name` (String) Name of the field in the record that contains the embedding

Optional:

- `mode` (String) must be one of ["from_field"]


<a id="nestedatt--configuration--embedding--destination_milvus_update_embedding_open_ai"></a>
### Nested Schema for `configuration.embedding.destination_milvus_update_embedding_open_ai`

Required:

- `openai_key` (String)

Optional:

- `mode` (String) must be one of ["openai"]



<a id="nestedatt--configuration--indexing"></a>
### Nested Schema for `configuration.indexing`

Required:

- `auth` (Attributes) Authentication method (see [below for nested schema](#nestedatt--configuration--indexing--auth))
- `collection` (String) The collection to load data into
- `host` (String) The public endpoint of the Milvus instance.

Optional:

- `db` (String) The database to connect to
- `text_field` (String) The field in the entity that contains the embedded text
- `vector_field` (String) The field in the entity that contains the vector

<a id="nestedatt--configuration--indexing--auth"></a>
### Nested Schema for `configuration.indexing.auth`

Optional:

- `destination_milvus_indexing_authentication_api_token` (Attributes) Authenticate using an API token (suitable for Zilliz Cloud) (see [below for nested schema](#nestedatt--configuration--indexing--auth--destination_milvus_indexing_authentication_api_token))
- `destination_milvus_indexing_authentication_no_auth` (Attributes) Do not authenticate (suitable for locally running test clusters, do not use for clusters with public IP addresses) (see [below for nested schema](#nestedatt--configuration--indexing--auth--destination_milvus_indexing_authentication_no_auth))
- `destination_milvus_indexing_authentication_username_password` (Attributes) Authenticate using username and password (suitable for self-managed Milvus clusters) (see [below for nested schema](#nestedatt--configuration--indexing--auth--destination_milvus_indexing_authentication_username_password))
- `destination_milvus_update_indexing_authentication_api_token` (Attributes) Authenticate using an API token (suitable for Zilliz Cloud) (see [below for nested schema](#nestedatt--configuration--indexing--auth--destination_milvus_update_indexing_authentication_api_token))
- `destination_milvus_update_indexing_authentication_no_auth` (Attributes) Do not authenticate (suitable for locally running test clusters, do not use for clusters with public IP addresses) (see [below for nested schema](#nestedatt--configuration--indexing--auth--destination_milvus_update_indexing_authentication_no_auth))
- `destination_milvus_update_indexing_authentication_username_password` (Attributes) Authenticate using username and password (suitable for self-managed Milvus clusters) (see [below for nested schema](#nestedatt--configuration--indexing--auth--destination_milvus_update_indexing_authentication_username_password))

<a id="nestedatt--configuration--indexing--auth--destination_milvus_indexing_authentication_api_token"></a>
### Nested Schema for `configuration.indexing.auth.destination_milvus_update_indexing_authentication_username_password`

Required:

- `token` (String) API Token for the Milvus instance

Optional:

- `mode` (String) must be one of ["token"]


<a id="nestedatt--configuration--indexing--auth--destination_milvus_indexing_authentication_no_auth"></a>
### Nested Schema for `configuration.indexing.auth.destination_milvus_update_indexing_authentication_username_password`

Optional:

- `mode` (String) must be one of ["no_auth"]


<a id="nestedatt--configuration--indexing--auth--destination_milvus_indexing_authentication_username_password"></a>
### Nested Schema for `configuration.indexing.auth.destination_milvus_update_indexing_authentication_username_password`

Required:

- `password` (String) Password for the Milvus instance
- `username` (String) Username for the Milvus instance

Optional:

- `mode` (String) must be one of ["username_password"]


<a id="nestedatt--configuration--indexing--auth--destination_milvus_update_indexing_authentication_api_token"></a>
### Nested Schema for `configuration.indexing.auth.destination_milvus_update_indexing_authentication_username_password`

Required:

- `token` (String) API Token for the Milvus instance

Optional:

- `mode` (String) must be one of ["token"]


<a id="nestedatt--configuration--indexing--auth--destination_milvus_update_indexing_authentication_no_auth"></a>
### Nested Schema for `configuration.indexing.auth.destination_milvus_update_indexing_authentication_username_password`

Optional:

- `mode` (String) must be one of ["no_auth"]


<a id="nestedatt--configuration--indexing--auth--destination_milvus_update_indexing_authentication_username_password"></a>
### Nested Schema for `configuration.indexing.auth.destination_milvus_update_indexing_authentication_username_password`

Required:

- `password` (String) Password for the Milvus instance
- `username` (String) Username for the Milvus instance

Optional:

- `mode` (String) must be one of ["username_password"]




<a id="nestedatt--configuration--processing"></a>
### Nested Schema for `configuration.processing`

Required:

- `chunk_size` (Number) Size of chunks in tokens to store in vector store (make sure it is not too big for the context if your LLM)

Optional:

- `chunk_overlap` (Number) Size of overlap between chunks in tokens to store in vector store to better capture relevant context
- `metadata_fields` (List of String) List of fields in the record that should be stored as metadata. The field list is applied to all streams in the same way and non-existing fields are ignored. If none are defined, all fields are considered metadata fields. When specifying text fields, you can access nested fields in the record by using dot notation, e.g. `user.name` will access the `name` field in the `user` object. It's also possible to use wildcards to access all fields in an object, e.g. `users.*.name` will access all `names` fields in all entries of the `users` array. When specifying nested paths, all matching values are flattened into an array set to a field named by the path.
- `text_fields` (List of String) List of fields in the record that should be used to calculate the embedding. The field list is applied to all streams in the same way and non-existing fields are ignored. If none are defined, all fields are considered text fields. When specifying text fields, you can access nested fields in the record by using dot notation, e.g. `user.name` will access the `name` field in the `user` object. It's also possible to use wildcards to access all fields in an object, e.g. `users.*.name` will access all `names` fields in all entries of the `users` array.

