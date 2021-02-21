resource "azurerm_network_security_group" "nsg" {
    name                = "${var.teamid}-${var.prjid}"
    location            = "${var.rg_location}"
    resource_group_name = "${var.rg_name}"
    
    security_rule {
        name                       = "SSH"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_ranges     = "${var.dest_port}"
        source_address_prefix      = "${var.source_address}"
        destination_address_prefix = "*"
    }

    tags = {
        teamid = "${var.teamid}"
        projectid = "${var.prjid}"
    }
}