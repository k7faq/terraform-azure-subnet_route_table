output "subnet_id" {
  value = "${azurerm_subnet.vnet.id}"
}

output "table_id" {
  value = "${azurerm_route_table.vnet.id}"
}