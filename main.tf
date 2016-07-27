resource "github_membership" "membership_for_admins" {
  username = "${element(split(",", var.admins), count.index)}"
  role     = "admin"
  count    = "${length(compact(split(",", var.admins)))}"
}

resource "github_membership" "membership_for_members" {
  username = "${element(split(",", var.members), count.index)}"
  role     = "member"
  count    = "${length(compact(split(",", var.members)))}"
}