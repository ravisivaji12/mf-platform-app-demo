variable "github_token" {
  type        = string
  description = "GitHub token for for accessing and provision repos using automation"
  nullable    = false
}

variable "github_organization" {
  description = "GitHub Organization Name"
  type        = string
  default     = "ravisivaji12"
}
variable "template_repo" {
  description = "GitHub Repository Template Name"
  type        = string
  default     = "mf-mdm-landing-zone"
}
variable "new_repo_name" {
  description = "Name of the new repository"
  type        = list(string)
  default     = []
}
variable "repo_visibility" {
  description = "Visibility of the repository (private/public)"
  type        = string
  default     = "public"
}

variable "repo_secrets" {
  description = "Map of repositories and their secrets"
  type        = map(map(string))
}

variable "repo_user_collaborators" {
  description = "Map of users to be added to specific repos"
  type = map(list(object({
    username   = string
    permission = string
  })))
}

variable "repo_team_collaborators" {
  description = "Map of teams to repos and permissions"
  type = map(list(object({
    team_slug  = string
    permission = string
  })))
}