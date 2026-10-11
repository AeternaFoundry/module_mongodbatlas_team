resource "mongodbatlas_team" "teams" {
  for_each = var.teams

  name      = each.value.name
  org_id    = each.value.org_id
  usernames = each.value.usernames
}

