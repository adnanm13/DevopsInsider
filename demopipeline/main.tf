resource "azurerm_resource_group" "example" {
  for_each = var.rg
  name     = each.key
  location = each.value.location
}



# OR other Method is
# resource "azurerm_resource_group" "example" {
#   for_each = var.rg
#   name     = each.value.name   //this is different
#   location = each.value.location
# }