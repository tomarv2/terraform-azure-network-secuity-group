resource "azurerm_network_security_group" "this" {
  count = var.deploy_network_security_group ? 1 : 0

  name                = local.network_security_group_name
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "SSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = var.dest_port
    source_address_prefix      = var.source_address
    destination_address_prefix = "*"
  }

  tags = merge(local.shared_tags)
}
