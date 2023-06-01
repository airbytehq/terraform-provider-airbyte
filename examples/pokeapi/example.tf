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

variable "key" {
  type = string
}

resource "airbyte_workspace" "my_workspace" {
  name = "Test Workspace"
}

resource "airbyte_source_pokeapi" "pikachu" {
  name         = "pikachu"
  workspace_id = airbyte_workspace.my_workspace.workspace_id
  configuration = {
    pokemon_name = "pikachu"
    source_type  = "pokeapi"
  }
}