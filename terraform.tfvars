github_token = ""

github_organization = "McCainFoods"
# template_repo       = "mf-mdm-landing-zone"
# new_repo_name       = ["mf-mdm-landing-zone1", "mf-mdm-landing-zone2"]
new_repo_name = {
  "mf-dt-azrabc-sampleapp-foundation-repo" = "mf-platform-azure-application-landing-zone"
  "mf-dt-azrabc-sampleapp-infra-repo"      = "mf-platform-azure-virtual-machine-linux"
  "mf-dt-azrabc-sampleapp-app-repo"        = "mf-core-networking"
}
repo_visibility = "private"

repo_secrets = {
  "mf-dt-azrabc-sampleapp-foundation-repo" = {
    "GH_TOKEN"              = ""
    "AZURE_SUBSCRIPTION_ID" = ""
    "TF_API_TOKEN"          = ""
    "AZURE_CREDENTIALS"     = <<EOT
{
  "clientId": "",
  "clientSecret": "",
  "subscriptionId": "",
  "tenantId": ""
}
EOT
  }

  "mf-dt-azrabc-sampleapp-infra-repo" = {
    "GH_TOKEN"              = ""
    "AZURE_SUBSCRIPTION_ID" = ""
    "TF_API_TOKEN"          = ""
    "AZURE_CREDENTIALS"     = <<EOT
{
  "clientId": "",
  "clientSecret": "",
  "subscriptionId": "",
  "tenantId": ""
}
EOT
  }
  "mf-dt-azrabc-sampleapp-app-repo" = {
    "GH_TOKEN"              = ""
    "AZURE_SUBSCRIPTION_ID" = ""
    "TF_API_TOKEN"          = ""
    "AZURE_CREDENTIALS"     = <<EOT
{
  "clientId": "",
  "clientSecret": "",
  "subscriptionId": "",
  "tenantId": ""
}
EOT
  }
}

repo_user_collaborators = {
  #   "mf-mdm-landing-zone1a" = [
  #     {
  #       username   = "raavisivaji12"
  #       permission = "admin"
  #     },
  #     {
  #       username   = "siddarth"
  #       permission = "push"
  #     }
  #   ],
  #   "mf-mdm-landing-zone2" = [
  #     {
  #       username   = "Raavi"
  #       permission = "pull"
  #     }
  #   ]
}

repo_team_collaborators = {
  "mf-dt-azrabc-sampleapp-infra-repo" = [
    {
      team_slug  = "Platform-Vendor-TechM-Admin"
      permission = "admin"
    },
    {
      team_slug  = "DevOps"
      permission = "push"
    }
  ],
  "mf-dt-azrabc-sampleapp-foundation-repo" = [
    {
      team_slug  = "Platform-Vendor-TechM-Admin"
      permission = "admin"
    },
    {
      team_slug  = "DevOps"
      permission = "push"
    }
  ]
  "mf-dt-azrabc-sampleapp-app-repo" = [
    {
      team_slug  = "Platform-Vendor-TechM-Admin"
      permission = "admin"
    },
    {
      team_slug  = "DevOps"
      permission = "push"
    }
  ]
}

tfc_organization = ""
tfe_token        = ""

projects = {
  mf-dt-azrabc-sampleapp-tfcprj = {
    workspaces = {
      mf-dt-azrabc-sampleapp-foundation-tfcws = {
        vcs_repo = "mf-dt-azrabc-sampleapp-foundation-repo"
        tf_vars = {
          ARM_SUBSCRIPTION_ID     = ""
          ARM_CLIENT_ID           = ""
          ARM_TENANT_ID           = ""
          TFC_AZURE_PROVIDER_AUTH = "true"
          GITHUB_TOKEN            = ""
          ARM_CLIENT_SECRET       = ""
          AAD_CLIENT_SECRET       = ""
          TFC_AZURE_RUN_CLIENT_ID = ""
        }
      }
      mf-dt-azrabc-sampleapp-dev-tfcws = {
        vcs_repo = "mf-dt-azrabc-sampleapp-infra-repo"
        tf_vars = {
          ARM_SUBSCRIPTION_ID     = ""
          ARM_CLIENT_ID           = ""
          ARM_TENANT_ID           = ""
          TFC_AZURE_PROVIDER_AUTH = "true"
          GITHUB_TOKEN            = ""
          ARM_CLIENT_SECRET       = ""
          AAD_CLIENT_SECRET       = ""
          TFC_AZURE_RUN_CLIENT_ID = ""
        }
      }
    }
  }  
}
existing_aad_app_display_name = "Terraform MF Core Infrastructure Prod"
