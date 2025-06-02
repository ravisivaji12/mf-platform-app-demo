github_token = "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"

github_organization = "ravisivaji12"
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
    "GH_TOKEN"              = "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"
    "AZURE_SUBSCRIPTION_ID" = "abd34832-7708-43f9-a480-e3b7a87b41d7"
    "TF_API_TOKEN"          = "O6K8plKjfiIbiw.atlasv1.WBIp2toUChHLyoKldKgYUVmZYBEcjSnFn8hjbNGYQClXFXEs6j6yBU0FcZtK8vrXkzE"
    "AZURE_CREDENTIALS"     = <<EOT
{
  "clientId": "6d7daf56-5b56-41a6-9a6d-50bea2ca68b0",
  "clientSecret": "0gh8Q~1OYaTHAR4mfZc8egRSA6~Nv0IYZkHVUcTd",
  "subscriptionId": "abd34832-7708-43f9-a480-e3b7a87b41d7",
  "tenantId": "fd036ad5-08f1-4dab-947b-3b6f9462e84d"
}
EOT
  }

  "mf-dt-azrabc-sampleapp-infra-repo" = {
    "GH_TOKEN"              = "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"
    "AZURE_SUBSCRIPTION_ID" = "abd34832-7708-43f9-a480-e3b7a87b41d7"
    "TF_API_TOKEN"          = "O6K8plKjfiIbiw.atlasv1.WBIp2toUChHLyoKldKgYUVmZYBEcjSnFn8hjbNGYQClXFXEs6j6yBU0FcZtK8vrXkzE"
    "AZURE_CREDENTIALS"     = <<EOT
{
  "clientId": "6d7daf56-5b56-41a6-9a6d-50bea2ca68b0",
  "clientSecret": "0gh8Q~1OYaTHAR4mfZc8egRSA6~Nv0IYZkHVUcTd",
  "subscriptionId": "abd34832-7708-43f9-a480-e3b7a87b41d7",
  "tenantId": "fd036ad5-08f1-4dab-947b-3b6f9462e84d"
}
EOT
  }
  "mf-dt-azrabc-sampleapp-app-repo" = {
    "GH_TOKEN"              = "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"
    "AZURE_SUBSCRIPTION_ID" = "abd34832-7708-43f9-a480-e3b7a87b41d7"
    "TF_API_TOKEN"          = "O6K8plKjfiIbiw.atlasv1.WBIp2toUChHLyoKldKgYUVmZYBEcjSnFn8hjbNGYQClXFXEs6j6yBU0FcZtK8vrXkzE"
    "AZURE_CREDENTIALS"     = <<EOT
{
  "clientId": "6d7daf56-5b56-41a6-9a6d-50bea2ca68b0",
  "clientSecret": "0gh8Q~1OYaTHAR4mfZc8egRSA6~Nv0IYZkHVUcTd",
  "subscriptionId": "abd34832-7708-43f9-a480-e3b7a87b41d7",
  "tenantId": "fd036ad5-08f1-4dab-947b-3b6f9462e84d"
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
tfe_token        = "O6K8plKjfiIbiw.atlasv1.WBIp2toUChHLyoKldKgYUVmZYBEcjSnFn8hjbNGYQClXFXEs6j6yBU0FcZtK8vrXkzE"

projects = {
  mf-dt-azrabc-sampleapp-tfcprj = {
    workspaces = {
      mf-dt-azrabc-sampleapp-foundation-tfcws = {
        vcs_repo = "mf-dt-azrabc-sampleapp-foundation-repo"
        tf_vars = {
          ARM_SUBSCRIPTION_ID     = "abd34832-7708-43f9-a480-e3b7a87b41d7"
          ARM_CLIENT_ID           = "6d7daf56-5b56-41a6-9a6d-50bea2ca68b0"
          ARM_TENANT_ID           = "fd036ad5-08f1-4dab-947b-3b6f9462e84d"
          TFC_AZURE_PROVIDER_AUTH = "true"
          GITHUB_TOKEN            = "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"
          ARM_CLIENT_SECRET       = "0gh8Q~1OYaTHAR4mfZc8egRSA6~Nv0IYZkHVUcTd"
          AAD_CLIENT_SECRET       = "0gh8Q~1OYaTHAR4mfZc8egRSA6~Nv0IYZkHVUcTd"
          TFC_AZURE_RUN_CLIENT_ID = "6d7daf56-5b56-41a6-9a6d-50bea2ca68b0"
        }
      }
      mf-dt-azrabc-sampleapp-dev-tfcws = {
        vcs_repo = "mf-dt-azrabc-sampleapp-infra-repo"
        tf_vars = {
          ARM_SUBSCRIPTION_ID     = "abd34832-7708-43f9-a480-e3b7a87b41d7"
          ARM_CLIENT_ID           = "6d7daf56-5b56-41a6-9a6d-50bea2ca68b0"
          ARM_TENANT_ID           = "fd036ad5-08f1-4dab-947b-3b6f9462e84d"
          TFC_AZURE_PROVIDER_AUTH = "true"
          GITHUB_TOKEN            = "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"
          ARM_CLIENT_SECRET       = "0gh8Q~1OYaTHAR4mfZc8egRSA6~Nv0IYZkHVUcTd"
          AAD_CLIENT_SECRET       = "0gh8Q~1OYaTHAR4mfZc8egRSA6~Nv0IYZkHVUcTd"
          TFC_AZURE_RUN_CLIENT_ID = "6d7daf56-5b56-41a6-9a6d-50bea2ca68b0"
        }
      }
    }
  }  
}
existing_aad_app_display_name = "Terraform MF Core Infrastructure Prod"
