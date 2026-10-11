output "teams_id" {
  description = "Map of id values across all teams, keyed the same as var.teams except keys with no id are omitted"
  value       = { for k, v in mongodbatlas_team.teams : k => v.id if v.id != null && length(v.id) > 0 }
}
output "teams_name" {
  description = "Map of name values across all teams, keyed the same as var.teams except keys with no name are omitted"
  value       = { for k, v in mongodbatlas_team.teams : k => v.name if v.name != null && length(v.name) > 0 }
}
output "teams_org_id" {
  description = "Map of org_id values across all teams, keyed the same as var.teams except keys with no org_id are omitted"
  value       = { for k, v in mongodbatlas_team.teams : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "teams_team_id" {
  description = "Map of team_id values across all teams, keyed the same as var.teams except keys with no team_id are omitted"
  value       = { for k, v in mongodbatlas_team.teams : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}
output "teams_usernames" {
  description = "Map of usernames values across all teams, keyed the same as var.teams except keys with no usernames are omitted"
  value       = { for k, v in mongodbatlas_team.teams : k => v.usernames if v.usernames != null && length(v.usernames) > 0 }
}

