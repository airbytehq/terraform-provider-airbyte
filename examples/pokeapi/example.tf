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

variable "google_client_id" {
  type = string
}

variable "google_spreadsheet_id" {
  type = string
}

variable "google_client_secret" {
  type = string
}

variable "google_client_refresh_token" {
  type = string
}

resource "airbyte_workspace" "my_workspace" {
  name = "My Test Workspace"
}

resource "airbyte_source_pokeapi" "kido" {
  name         = "bulbasaur"
  workspace_id = airbyte_workspace.my_workspace.workspace_id
  configuration = {
    pokemon_name = "bulbasaur"
    source_type  = "pokeapi"
  }
}

resource "airbyte_destination_google_sheets" "output" {
  name         = "speakeasy_output"
  workspace_id = airbyte_workspace.my_workspace.workspace_id
  configuration = {
    source_type = "googlesheets"
    credentials = {
      client_id     = var.google_client_id
      client_secret = var.google_client_secret
      refresh_token = var.google_client_refresh_token
    }
    destination_type = "google-sheets"
    spreadsheet_id   = var.google_spreadsheet_id
  }
}

resource "airbyte_connection" "test_connection" {
  name           = "pokeapi_to_google_sheets"
  source_id      = airbyte_source_pokeapi.kido.source_id
  destination_id = airbyte_destination_google_sheets.output.destination_id
  status         = "inactive"
}