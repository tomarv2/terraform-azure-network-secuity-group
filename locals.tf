locals {
  shared_tags = tomap(
    {
      "Name"    = "${var.teamid}-${var.prjid}",
      "team"    = var.teamid,
      "project" = var.prjid
    }
  )

  network_security_group_name = var.network_security_group_name != null ? var.network_security_group_name : "${var.teamid}-${var.prjid}"
}
