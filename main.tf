module "fabric" {
  source = "./modules/fabric"
  for_each = {
    for index, bu in var.bu:
    bu.bu_name => bu 
  }
  bu_name = each.value.bu_name
  type = each.value.type
  capacity_fabric_id = each.value.fabric_capacity
}