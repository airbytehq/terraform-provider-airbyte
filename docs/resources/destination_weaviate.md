---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_destination_weaviate Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  DestinationWeaviate Resource
---

# airbyte_destination_weaviate (Resource)

DestinationWeaviate Resource

## Example Usage

```terraform
resource "airbyte_destination_weaviate" "my_destination_weaviate" {
  configuration = {
    embedding = {
      from_field = {
        dimensions = 1536
        field_name = "embedding"
      }
    }
    indexing = {
      additional_headers = [
        {
          header_key = "...my_header_key..."
          value      = "...my_value..."
        }
      ]
      auth = {
        api_token = {
          token = "...my_token..."
        }
      }
      batch_size         = 9
      default_vectorizer = "text2vec-cohere"
      host               = "https://my-cluster.weaviate.network"
      tenant_id          = "...my_tenant_id..."
      text_field         = "...my_text_field..."
    }
    omit_raw_text = true
    processing = {
      chunk_overlap = 4
      chunk_size    = 4921
      field_name_mappings = [
        {
          from_field = "...my_from_field..."
          to_field   = "...my_to_field..."
        }
      ]
      metadata_fields = [
        "..."
      ]
      text_fields = [
        "..."
      ]
      text_splitter = {
        by_markdown_header = {
          split_level = 4
        }
      }
    }
  }
  definition_id = "37374193-1614-4ed2-9e81-293bdd2b75ef"
  name          = "...my_name..."
  workspace_id  = "3a2f5d63-fb57-4357-9913-ad72f8c70fbf"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `configuration` (Attributes) The configuration model for the Vector DB based destinations. This model is used to generate the UI for the destination configuration,
as well as to provide type safety for the configuration passed to the destination.

The configuration model is composed of four parts:
* Processing configuration
* Embedding configuration
* Indexing configuration
* Advanced configuration

Processing, embedding and advanced configuration are provided by this base class, while the indexing configuration is provided by the destination connector in the sub class. (see [below for nested schema](#nestedatt--configuration))
- `name` (String) Name of the destination e.g. dev-mysql-instance.
- `workspace_id` (String)

### Optional

- `definition_id` (String) The UUID of the connector definition. One of configuration.destinationType or definitionId must be provided. Requires replacement if changed.

### Read-Only

- `created_at` (Number)
- `destination_id` (String)
- `destination_type` (String)
- `resource_allocation` (Attributes) actor or actor definition specific resource requirements. if default is set, these are the requirements that should be set for ALL jobs run for this actor definition. it is overriden by the job type specific configurations. if not set, the platform will use defaults. these values will be overriden by configuration at the connection level. (see [below for nested schema](#nestedatt--resource_allocation))

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `embedding` (Attributes) Embedding configuration (see [below for nested schema](#nestedatt--configuration--embedding))
- `indexing` (Attributes) Indexing configuration (see [below for nested schema](#nestedatt--configuration--indexing))
- `processing` (Attributes) (see [below for nested schema](#nestedatt--configuration--processing))

Optional:

- `omit_raw_text` (Boolean) Do not store the text that gets embedded along with the vector and the metadata in the destination. If set to true, only the vector and the metadata will be stored - in this case raw text for LLM use cases needs to be retrieved from another source. Default: false

<a id="nestedatt--configuration--embedding"></a>
### Nested Schema for `configuration.embedding`

Optional:

- `azure_open_ai` (Attributes) Use the Azure-hosted OpenAI API to embed text. This option is using the text-embedding-ada-002 model with 1536 embedding dimensions. (see [below for nested schema](#nestedatt--configuration--embedding--azure_open_ai))
- `cohere` (Attributes) Use the Cohere API to embed text. (see [below for nested schema](#nestedatt--configuration--embedding--cohere))
- `fake` (Attributes) Use a fake embedding made out of random vectors with 1536 embedding dimensions. This is useful for testing the data pipeline without incurring any costs. (see [below for nested schema](#nestedatt--configuration--embedding--fake))
- `from_field` (Attributes) Use a field in the record as the embedding. This is useful if you already have an embedding for your data and want to store it in the vector store. (see [below for nested schema](#nestedatt--configuration--embedding--from_field))
- `no_external_embedding` (Attributes) Do not calculate and pass embeddings to Weaviate. Suitable for clusters with configured vectorizers to calculate embeddings within Weaviate or for classes that should only support regular text search. (see [below for nested schema](#nestedatt--configuration--embedding--no_external_embedding))
- `open_ai` (Attributes) Use the OpenAI API to embed text. This option is using the text-embedding-ada-002 model with 1536 embedding dimensions. (see [below for nested schema](#nestedatt--configuration--embedding--open_ai))
- `open_ai_compatible` (Attributes) Use a service that's compatible with the OpenAI API to embed text. (see [below for nested schema](#nestedatt--configuration--embedding--open_ai_compatible))

<a id="nestedatt--configuration--embedding--azure_open_ai"></a>
### Nested Schema for `configuration.embedding.azure_open_ai`

Required:

- `api_base` (String) The base URL for your Azure OpenAI resource.  You can find this in the Azure portal under your Azure OpenAI resource
- `deployment` (String) The deployment for your Azure OpenAI resource.  You can find this in the Azure portal under your Azure OpenAI resource
- `openai_key` (String, Sensitive) The API key for your Azure OpenAI resource.  You can find this in the Azure portal under your Azure OpenAI resource


<a id="nestedatt--configuration--embedding--cohere"></a>
### Nested Schema for `configuration.embedding.cohere`

Required:

- `cohere_key` (String, Sensitive)


<a id="nestedatt--configuration--embedding--fake"></a>
### Nested Schema for `configuration.embedding.fake`


<a id="nestedatt--configuration--embedding--from_field"></a>
### Nested Schema for `configuration.embedding.from_field`

Required:

- `dimensions` (Number) The number of dimensions the embedding model is generating
- `field_name` (String) Name of the field in the record that contains the embedding


<a id="nestedatt--configuration--embedding--no_external_embedding"></a>
### Nested Schema for `configuration.embedding.no_external_embedding`


<a id="nestedatt--configuration--embedding--open_ai"></a>
### Nested Schema for `configuration.embedding.open_ai`

Required:

- `openai_key` (String, Sensitive)


<a id="nestedatt--configuration--embedding--open_ai_compatible"></a>
### Nested Schema for `configuration.embedding.open_ai_compatible`

Required:

- `base_url` (String) The base URL for your OpenAI-compatible service
- `dimensions` (Number) The number of dimensions the embedding model is generating

Optional:

- `api_key` (String, Sensitive) Default: ""
- `model_name` (String) The name of the model to use for embedding. Default: "text-embedding-ada-002"



<a id="nestedatt--configuration--indexing"></a>
### Nested Schema for `configuration.indexing`

Required:

- `auth` (Attributes) Authentication method (see [below for nested schema](#nestedatt--configuration--indexing--auth))
- `host` (String) The public endpoint of the Weaviate cluster.

Optional:

- `additional_headers` (Attributes List) Additional HTTP headers to send with every request. (see [below for nested schema](#nestedatt--configuration--indexing--additional_headers))
- `batch_size` (Number) The number of records to send to Weaviate in each batch. Default: 128
- `default_vectorizer` (String) The vectorizer to use if new classes need to be created. Default: "none"; must be one of ["none", "text2vec-cohere", "text2vec-huggingface", "text2vec-openai", "text2vec-palm", "text2vec-contextionary", "text2vec-transformers", "text2vec-gpt4all"]
- `tenant_id` (String, Sensitive) The tenant ID to use for multi tenancy. Default: ""
- `text_field` (String) The field in the object that contains the embedded text. Default: "text"

<a id="nestedatt--configuration--indexing--auth"></a>
### Nested Schema for `configuration.indexing.auth`

Optional:

- `api_token` (Attributes) Authenticate using an API token (suitable for Weaviate Cloud) (see [below for nested schema](#nestedatt--configuration--indexing--auth--api_token))
- `no_authentication` (Attributes) Do not authenticate (suitable for locally running test clusters, do not use for clusters with public IP addresses) (see [below for nested schema](#nestedatt--configuration--indexing--auth--no_authentication))
- `username_password` (Attributes) Authenticate using username and password (suitable for self-managed Weaviate clusters) (see [below for nested schema](#nestedatt--configuration--indexing--auth--username_password))

<a id="nestedatt--configuration--indexing--auth--api_token"></a>
### Nested Schema for `configuration.indexing.auth.api_token`

Required:

- `token` (String, Sensitive) API Token for the Weaviate instance


<a id="nestedatt--configuration--indexing--auth--no_authentication"></a>
### Nested Schema for `configuration.indexing.auth.no_authentication`


<a id="nestedatt--configuration--indexing--auth--username_password"></a>
### Nested Schema for `configuration.indexing.auth.username_password`

Required:

- `password` (String, Sensitive) Password for the Weaviate cluster
- `username` (String) Username for the Weaviate cluster



<a id="nestedatt--configuration--indexing--additional_headers"></a>
### Nested Schema for `configuration.indexing.additional_headers`

Required:

- `header_key` (String)
- `value` (String, Sensitive)



<a id="nestedatt--configuration--processing"></a>
### Nested Schema for `configuration.processing`

Required:

- `chunk_size` (Number) Size of chunks in tokens to store in vector store (make sure it is not too big for the context if your LLM)

Optional:

- `chunk_overlap` (Number) Size of overlap between chunks in tokens to store in vector store to better capture relevant context. Default: 0
- `field_name_mappings` (Attributes List) List of fields to rename. Not applicable for nested fields, but can be used to rename fields already flattened via dot notation. (see [below for nested schema](#nestedatt--configuration--processing--field_name_mappings))
- `metadata_fields` (List of String) List of fields in the record that should be stored as metadata. The field list is applied to all streams in the same way and non-existing fields are ignored. If none are defined, all fields are considered metadata fields. When specifying text fields, you can access nested fields in the record by using dot notation, e.g. `user.name` will access the `name` field in the `user` object. It's also possible to use wildcards to access all fields in an object, e.g. `users.*.name` will access all `names` fields in all entries of the `users` array. When specifying nested paths, all matching values are flattened into an array set to a field named by the path.
- `text_fields` (List of String) List of fields in the record that should be used to calculate the embedding. The field list is applied to all streams in the same way and non-existing fields are ignored. If none are defined, all fields are considered text fields. When specifying text fields, you can access nested fields in the record by using dot notation, e.g. `user.name` will access the `name` field in the `user` object. It's also possible to use wildcards to access all fields in an object, e.g. `users.*.name` will access all `names` fields in all entries of the `users` array.
- `text_splitter` (Attributes) Split text fields into chunks based on the specified method. (see [below for nested schema](#nestedatt--configuration--processing--text_splitter))

<a id="nestedatt--configuration--processing--field_name_mappings"></a>
### Nested Schema for `configuration.processing.field_name_mappings`

Required:

- `from_field` (String) The field name in the source
- `to_field` (String) The field name to use in the destination


<a id="nestedatt--configuration--processing--text_splitter"></a>
### Nested Schema for `configuration.processing.text_splitter`

Optional:

- `by_markdown_header` (Attributes) Split the text by Markdown headers down to the specified header level. If the chunk size fits multiple sections, they will be combined into a single chunk. (see [below for nested schema](#nestedatt--configuration--processing--text_splitter--by_markdown_header))
- `by_programming_language` (Attributes) Split the text by suitable delimiters based on the programming language. This is useful for splitting code into chunks. (see [below for nested schema](#nestedatt--configuration--processing--text_splitter--by_programming_language))
- `by_separator` (Attributes) Split the text by the list of separators until the chunk size is reached, using the earlier mentioned separators where possible. This is useful for splitting text fields by paragraphs, sentences, words, etc. (see [below for nested schema](#nestedatt--configuration--processing--text_splitter--by_separator))

<a id="nestedatt--configuration--processing--text_splitter--by_markdown_header"></a>
### Nested Schema for `configuration.processing.text_splitter.by_markdown_header`

Optional:

- `split_level` (Number) Level of markdown headers to split text fields by. Headings down to the specified level will be used as split points. Default: 1


<a id="nestedatt--configuration--processing--text_splitter--by_programming_language"></a>
### Nested Schema for `configuration.processing.text_splitter.by_programming_language`

Required:

- `language` (String) Split code in suitable places based on the programming language. must be one of ["cpp", "go", "java", "js", "php", "proto", "python", "rst", "ruby", "rust", "scala", "swift", "markdown", "latex", "html", "sol"]


<a id="nestedatt--configuration--processing--text_splitter--by_separator"></a>
### Nested Schema for `configuration.processing.text_splitter.by_separator`

Optional:

- `keep_separator` (Boolean) Whether to keep the separator in the resulting chunks. Default: false
- `separators` (List of String) List of separator strings to split text fields by. The separator itself needs to be wrapped in double quotes, e.g. to split by the dot character, use ".". To split by a newline, use "\n".





<a id="nestedatt--resource_allocation"></a>
### Nested Schema for `resource_allocation`

Read-Only:

- `default` (Attributes) optional resource requirements to run workers (blank for unbounded allocations) (see [below for nested schema](#nestedatt--resource_allocation--default))
- `job_specific` (Attributes List) (see [below for nested schema](#nestedatt--resource_allocation--job_specific))

<a id="nestedatt--resource_allocation--default"></a>
### Nested Schema for `resource_allocation.default`

Read-Only:

- `cpu_limit` (String)
- `cpu_request` (String)
- `ephemeral_storage_limit` (String)
- `ephemeral_storage_request` (String)
- `memory_limit` (String)
- `memory_request` (String)


<a id="nestedatt--resource_allocation--job_specific"></a>
### Nested Schema for `resource_allocation.job_specific`

Read-Only:

- `job_type` (String) enum that describes the different types of jobs that the platform runs. must be one of ["get_spec", "check_connection", "discover_schema", "sync", "reset_connection", "connection_updater", "replicate"]
- `resource_requirements` (Attributes) optional resource requirements to run workers (blank for unbounded allocations) (see [below for nested schema](#nestedatt--resource_allocation--job_specific--resource_requirements))

<a id="nestedatt--resource_allocation--job_specific--resource_requirements"></a>
### Nested Schema for `resource_allocation.job_specific.resource_requirements`

Read-Only:

- `cpu_limit` (String)
- `cpu_request` (String)
- `ephemeral_storage_limit` (String)
- `ephemeral_storage_request` (String)
- `memory_limit` (String)
- `memory_request` (String)

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_destination_weaviate.my_airbyte_destination_weaviate ""
```
