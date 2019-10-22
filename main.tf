resource "azurerm_route_table" "vnet" {
  name                = "${var.name}-rt"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  tags                = "${var.tags}"
}

resource "azurerm_subnet" "vnet" {
  name                 = "${var.name}-subnet"
  resource_group_name  = "${var.resource_group}"
  virtual_network_name = "${var.virtual_network_name}"
  address_prefix       = "${var.address_prefix}"
  route_table_id       = "${azurerm_route_table.vnet.id}"
  service_endpoints    = "${var.service_endpoints}"
}

resource "azurerm_subnet_route_table_association" "vnet" {
  subnet_id      = "${azurerm_subnet.vnet.id}"
  route_table_id = "${azurerm_route_table.vnet.id}"
  depends_on     = ["azurerm_route_table.vnet", "azurerm_subnet.vnet"]
}
