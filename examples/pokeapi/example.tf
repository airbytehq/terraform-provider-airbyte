terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.0.1"
    }
  }
}

provider "airbyte" {
  bearer_auth = var.key
}

variable "workspace_id" {
  type = string
}

variable "key" {
  type = string
}

resource "airbyte_source_pokeapi" "pikachu" {
  name         = "pikachu"
  workspace_id = var.workspace_id
  configuration = {
    pokemon_name = "pikachu"
    source_type  = "pokeapi"
  }
}