resource "github_repository" "new_repo" {
  for_each    = toset(var.new_repo_name)
  name        = each.value
  description = "This Repository: ${each.value} for MDIxAI platform has been created and managed using Terraform"
  visibility  = var.repo_visibility
  template {
    owner      = var.github_organization
    repository = var.template_repo
  }
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = false

  vulnerability_alerts   = true # Enable security alerts for dependencies
  delete_branch_on_merge = true

  lifecycle {
    prevent_destroy = true
    ignore_changes  = all
  }
}

# resource "github_branch_protection" "main" {
#   for_each      = github_repository.new_repo
#   repository_id = each.value.node_id
#   pattern       = "main"

#   required_status_checks {
#     strict   = true
#     contexts = ["Lint", "Security Scan", "Build & Test"]
#   }

#   enforce_admins = true

#   required_pull_request_reviews {
#     dismiss_stale_reviews      = true
#     require_code_owner_reviews = true
#   }
# }

# locals {
#    branches_to_protect = {
#     main = {
#       required_status_checks = {
#         strict   = true
#         contexts = ["Lint", "Security Scan", "Build & Test"]
#       }
#       enforce_admins               = true
#       dismiss_stale_reviews        = true
#       require_code_owner_reviews   = true
#     }
#     dev = {
#       required_status_checks = {
#         strict   = false
#         contexts = []
#       }
#       enforce_admins               = false
#       dismiss_stale_reviews        = true
#       require_code_owner_reviews   = false
#     }
#     release = {
#       required_status_checks = {
#         strict   = true
#         contexts = ["Build"]
#       }
#       enforce_admins               = false
#       dismiss_stale_reviews        = true
#       require_code_owner_reviews   = false
#     }
#   }

#   branch_protections = merge([
#     for repo_key, repo in github_repository.new_repo : {
#       for branch, settings in local.branches_to_protect :
#       "${repo_key}-${branch}" => {
#         repo_name = repo.name
#         branch    = branch
#         settings  = settings
#       }
#     }
#   ]...)
# }

resource "github_branch_protection" "per_branch" {
  for_each = local.branch_protections

  repository_id = each.value.repo_name
  pattern       = each.value.branch

  required_status_checks {
    strict   = each.value.settings.required_status_checks.strict
    contexts = each.value.settings.required_status_checks.contexts
  }

  enforce_admins = each.value.settings.enforce_admins

  required_pull_request_reviews {
    dismiss_stale_reviews      = each.value.settings.dismiss_stale_reviews
    require_code_owner_reviews = each.value.settings.require_code_owner_reviews
  }

  # restrictions {
  #   users = []
  #   teams = []
  #   apps  = []
  # }
}

# resource "github_branch_restriction" "per_branch" {
#   for_each = local.branch_restriction_targets

#   repository = each.value.repo_name
#   branch     = each.value.branch

#   teams = each.value.teams
#   users = each.value.users
#   apps  = each.value.apps
# }

resource "github_actions_secret" "repo_wise_secrets" {
  for_each = local.flattened_repo_secrets

  repository      = each.value.repository
  secret_name     = each.value.secret_name
  plaintext_value = each.value.secret

  depends_on = [github_repository.new_repo, github_branch_protection.per_branch]
}

resource "github_repository_collaborator" "user_collaborators" {
  for_each = merge([
    for repo, users in var.repo_user_collaborators : {
      for user in users :
      "${repo}-${user.username}" => {
        repository = repo
        username   = user.username
        permission = user.permission
      }
    }
  ]...)

  repository = each.value.repository
  username   = each.value.username
  permission = each.value.permission
}

data "github_team" "all_teams" {
  for_each = toset(flatten([
    for teams in values(var.repo_team_collaborators) :
    [for team in teams : team.team_slug]
  ]))

  slug = each.key
}

resource "github_team_repository" "team_collaborators" {
  for_each = merge([
    for repo, teams in var.repo_team_collaborators : {
      for team in teams :
      "${repo}-${team.team_slug}" => {
        repository = repo
        team_slug  = team.team_slug
        permission = team.permission
      }
    }
  ]...)

  team_id    = data.github_team.all_teams[each.value.team_slug].id
  repository = each.value.repository
  permission = each.value.permission
}





