# MS Fabric Artifacts Nomenclature
# https://www.advancinganalytics.co.uk/blog/2023/8/16/whats-in-a-name-naming-your-fabric-artifacts


resource "fabric_workspace" "example" {
  display_name = "WKS_${var.bu_name}"
  capacity_id = var.capacity_fabric_id
}

resource "fabric_workspace_role_assignment" "example" {
  workspace_id = fabric_workspace.example.id
  principal = {
    id   = "57b175e2-e4e8-4158-888f-fd225ae07231"
    type = "User"
  }
  role = "Member"
}


# Example 2 - Item with definition bootstrapping only
resource "fabric_eventstream" "eventstream" {
  display_name              = "RTA_ES_${var.bu_name}"
  description               = "example with definition bootstrapping"
  workspace_id              = fabric_workspace.example.id
  definition_update_enabled = false
  format                    = "Default"
  definition = {
    "eventstream.json" = {
      source = "C:/Users/yvaubour/Downloads/eventstream.json"
    }
  }
}


# Example 2 - Item with definition bootstrapping only
resource "fabric_eventstream" "eventstream_for_waste" {
  count = var.type == "waste" ? 1 : 0

  display_name              = "RTA_ES_${var.bu_name}_ForWaste"
  description               = "example with definition bootstrapping"
  workspace_id              = fabric_workspace.example.id
  definition_update_enabled = false
  format                    = "Default"
  definition = {
    "eventstream.json" = {
      source = "C:/Users/yvaubour/Downloads/eventstream.json"
    }
  }
}