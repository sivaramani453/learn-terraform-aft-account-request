module "infranonprod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "infranonprod@proton.me"
    AccountName               = "infra-nonprod"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "infranonprod@proton.me"
    SSOUserFirstName          = "infranonprod"
    SSOUserLastName           = "nonprod"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Name"           = "infranonprod"
    "Terraform"      = "True"
    "Env"            = "nonprod"
  }

  change_management_parameters = {
    change_requested_by = "siva"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
