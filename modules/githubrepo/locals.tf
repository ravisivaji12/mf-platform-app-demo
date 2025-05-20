locals {
  flattened_repo_secrets = merge([
    for repo, secrets in var.repo_secrets : {
      for secret_name, secret_value in secrets :
      "${repo}-${secret_name}" => {
        repository  = repo
        secret_name = secret_name
        secret      = secret_value
      }
    }
  ]...)
  branches_to_protect = {
    main = {
      required_status_checks = {
        strict   = true
        contexts = ["Lint", "Security Scan", "Build & Test"]
      }
      enforce_admins             = true
      dismiss_stale_reviews      = true
      require_code_owner_reviews = true
    }
    dev = {
      required_status_checks = {
        strict   = false
        contexts = []
      }
      enforce_admins             = false
      dismiss_stale_reviews      = true
      require_code_owner_reviews = false
    }
    release = {
      required_status_checks = {
        strict   = true
        contexts = ["Build"]
      }
      enforce_admins             = false
      dismiss_stale_reviews      = true
      require_code_owner_reviews = false
    }
  }

  branch_protections = merge([
    for repo_key, repo in github_repository.new_repo : {
      for branch, settings in local.branches_to_protect :
      "${repo_key}-${branch}" => {
        repo_name = repo.name
        branch    = branch
        settings  = settings
      }
    }
  ]...)  
}
