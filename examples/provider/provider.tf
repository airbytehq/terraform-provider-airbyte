terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.3.4"
    }
  }
}

provider "airbyte" {
  # Configuration options
}