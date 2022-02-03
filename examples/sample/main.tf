module "network_security_group" {
  source = "../../"

  resource_group_name = "demo-resource_group"
  location            = "westus2"
  source_address      = "10.2.0.0/18"
  dest_port           = ["80", "22"]
  # ---------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
