github_token = "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"

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
    "GH_TOKEN"              = "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"
    "AZURE_SUBSCRIPTION_ID" = "bbca0db0-25fe-49b8-a089-49933a07c849"
    "TF_API_TOKEN"          = "e58OID8QZNisJw.atlasv1.LnoBuRS4gg4YJy5CnAZftxHclzArmB51dVu3KruczpMiRmZHVzYyr8MyXmWK6zr6hng"
    "AZURE_CREDENTIALS"     = <<EOT
{
  "clientId": "b58ca4ea-c798-4fdf-a9a4-16a878e4fb54",
  "clientSecret": "Zyz8Q~FsUc3vYklJ5Xe7Xvu7AeapJrz24E8Tqdq5",
  "subscriptionId": "bbca0db0-25fe-49b8-a089-49933a07c849",
  "tenantId": "59fa7797-abec-4505-81e6-8ce092642190"
}
EOT
  }

  "mf-dt-azrabc-sampleapp-infra-repo" = {
    "GH_TOKEN"              = "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"
    "AZURE_SUBSCRIPTION_ID" = "bbca0db0-25fe-49b8-a089-49933a07c849"
    "TF_API_TOKEN"          = "e58OID8QZNisJw.atlasv1.LnoBuRS4gg4YJy5CnAZftxHclzArmB51dVu3KruczpMiRmZHVzYyr8MyXmWK6zr6hng"
    "AZURE_CREDENTIALS"     = <<EOT
{
  "clientId": "b58ca4ea-c798-4fdf-a9a4-16a878e4fb54",
  "clientSecret": "Zyz8Q~FsUc3vYklJ5Xe7Xvu7AeapJrz24E8Tqdq5",
  "subscriptionId": "bbca0db0-25fe-49b8-a089-49933a07c849",
  "tenantId": "59fa7797-abec-4505-81e6-8ce092642190"
}
EOT
  }
  "mf-dt-azrabc-sampleapp-app-repo" = {
    "GH_TOKEN"              = "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"
    "AZURE_SUBSCRIPTION_ID" = "bbca0db0-25fe-49b8-a089-49933a07c849"
    "TF_API_TOKEN"          = "e58OID8QZNisJw.atlasv1.LnoBuRS4gg4YJy5CnAZftxHclzArmB51dVu3KruczpMiRmZHVzYyr8MyXmWK6zr6hng"
    "AZURE_CREDENTIALS"     = <<EOT
{
  "clientId": "b58ca4ea-c798-4fdf-a9a4-16a878e4fb54",
  "clientSecret": "Zyz8Q~FsUc3vYklJ5Xe7Xvu7AeapJrz24E8Tqdq5",
  "subscriptionId": "bbca0db0-25fe-49b8-a089-49933a07c849",
  "tenantId": "59fa7797-abec-4505-81e6-8ce092642190"
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

tfc_organization = "Mccain_Foods"
tfe_token        = "e58OID8QZNisJw.atlasv1.LnoBuRS4gg4YJy5CnAZftxHclzArmB51dVu3KruczpMiRmZHVzYyr8MyXmWK6zr6hng"

projects = {
  mf-dt-azrabc-sampleapp-tfcprj = {
    workspaces = {
      mf-dt-azrabc-sampleapp-foundation-tfcws = {
        vcs_repo = "mf-dt-azrabc-sampleapp-foundation-repo"
        tf_vars = {
          ARM_SUBSCRIPTION_ID     = "bbca0db0-25fe-49b8-a089-49933a07c849"
          ARM_CLIENT_ID           = "b58ca4ea-c798-4fdf-a9a4-16a878e4fb54"
          ARM_TENANT_ID           = "59fa7797-abec-4505-81e6-8ce092642190"
          TFC_AZURE_PROVIDER_AUTH = "true"
          GITHUB_TOKEN            = "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"
          ARM_CLIENT_SECRET       = "Zyz8Q~FsUc3vYklJ5Xe7Xvu7AeapJrz24E8Tqdq5"
          AAD_CLIENT_SECRET       = "5kn8Q~dFD2PaFIOwBmaGy~.Dstlsup8qOL2GFbH0"
          TFC_AZURE_RUN_CLIENT_ID = "b58ca4ea-c798-4fdf-a9a4-16a878e4fb54"
        }
      }
      mf-dt-azrabc-sampleapp-dev-tfcws = {
        vcs_repo = "mf-dt-azrabc-sampleapp-infra-repo"
        tf_vars = {
          ARM_SUBSCRIPTION_ID     = "bbca0db0-25fe-49b8-a089-49933a07c849"
          ARM_CLIENT_ID           = "b58ca4ea-c798-4fdf-a9a4-16a878e4fb54"
          ARM_TENANT_ID           = "59fa7797-abec-4505-81e6-8ce092642190"
          TFC_AZURE_PROVIDER_AUTH = "true"
          GITHUB_TOKEN            = "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"
          ARM_CLIENT_SECRET       = "Zyz8Q~FsUc3vYklJ5Xe7Xvu7AeapJrz24E8Tqdq5"
          AAD_CLIENT_SECRET       = "5kn8Q~dFD2PaFIOwBmaGy~.Dstlsup8qOL2GFbH0"
          TFC_AZURE_RUN_CLIENT_ID = "b58ca4ea-c798-4fdf-a9a4-16a878e4fb54"
        }
      }
    }
  }
  # mf-dt-azrabc-sampleapp-tfcprj1 = {
  #   workspaces = {
  #     mf-dt-azrabc-sampleapp-foundation-tfcws1 = {
  #       vcs_repo = "mf-dt-azrabc-sampleapp-foundation-repo1"
  #       tf_vars = {
  #         ARM_SUBSCRIPTION_ID = "bbca0db0-25fe-49b8-a089-49933a07c849"
  #         ARM_CLIENT_ID = "b58ca4ea-c798-4fdf-a9a4-16a878e4fb54"
  #         ARM_TENANT_ID = "59fa7797-abec-4505-81e6-8ce092642190"
  #         TFC_AZURE_PROVIDER_AUTH = "true"
  #         GITHUB_TOKEN = "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"
  #         ARM_CLIENT_SECRET = "Zyz8Q~FsUc3vYklJ5Xe7Xvu7AeapJrz24E8Tqdq5"
  #         AAD_CLIENT_SECRET = "5kn8Q~dFD2PaFIOwBmaGy~.Dstlsup8qOL2GFbH0"
  #         TFC_AZURE_RUN_CLIENT_ID = "b58ca4ea-c798-4fdf-a9a4-16a878e4fb54"
  #       }
  #     }
  #     mf-dt-azrabc-sampleapp-dev-tfcws1 = {
  #       vcs_repo = "mf-dt-azrabc-sampleapp-infra-repo1"
  #       tf_vars = {
  #         ARM_SUBSCRIPTION_ID = "bbca0db0-25fe-49b8-a089-49933a07c849"
  #         ARM_CLIENT_ID = "b58ca4ea-c798-4fdf-a9a4-16a878e4fb54"
  #         ARM_TENANT_ID = "59fa7797-abec-4505-81e6-8ce092642190"
  #         TFC_AZURE_PROVIDER_AUTH = "true"
  #         GITHUB_TOKEN = "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"
  #         ARM_CLIENT_SECRET = "Zyz8Q~FsUc3vYklJ5Xe7Xvu7AeapJrz24E8Tqdq5"
  #         AAD_CLIENT_SECRET = "5kn8Q~dFD2PaFIOwBmaGy~.Dstlsup8qOL2GFbH0"
  #         TFC_AZURE_RUN_CLIENT_ID = "b58ca4ea-c798-4fdf-a9a4-16a878e4fb54"
  #       }
  #     }
  #   }
  # }
}
existing_aad_app_display_name = "Terraform MF Core Infrastructure Prod"
