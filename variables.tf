variable "teams" {
  description = <<EOT
Map of teams, attributes below
Required:
    - name
    - org_id
Optional:
    - usernames
EOT

  type = map(object({
    name      = string
    org_id    = string
    usernames = optional(set(string))
  }))
}

