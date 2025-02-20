resource "airbyte_workspace" "my_workspace" {
  name = "...my_name..."
  notifications = {
    connection_update = {
      email = {
        enabled = false
      }
      webhook = {
        enabled = false
        url     = "...my_url..."
      }
    }
    connection_update_action_required = {
      email = {
        enabled = true
      }
      webhook = {
        enabled = true
        url     = "...my_url..."
      }
    }
    failure = {
      email = {
        enabled = false
      }
      webhook = {
        enabled = false
        url     = "...my_url..."
      }
    }
    success = {
      email = {
        enabled = false
      }
      webhook = {
        enabled = true
        url     = "...my_url..."
      }
    }
    sync_disabled = {
      email = {
        enabled = true
      }
      webhook = {
        enabled = true
        url     = "...my_url..."
      }
    }
    sync_disabled_warning = {
      email = {
        enabled = false
      }
      webhook = {
        enabled = false
        url     = "...my_url..."
      }
    }
  }
  organization_id = "4d886138-b4b4-4da8-9dca-f4d28f8550f8"
}