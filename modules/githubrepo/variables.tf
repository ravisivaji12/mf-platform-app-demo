variable "github_token" {
  type = string
  description = "GitHub token for for accessing and provision repos using automation"
  nullable = false
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
  default = ["mf-mdm-landing-zone-one", " mf-mdm-landing-zone-two", "mf-mdm-landing-zone-three"]
}
variable "repo_visibility" {
  description = "Visibility of the repository (private/public)"
  type        = string
  default     = "public"
}

variable "secrets" {
  description = "Map of secret names and values"
  type        = map(string)
}

variable "secret_visibility" {
  description = "Visibility of the secret (private, selected, or all)"
  type        = string
  default     = "private"
}