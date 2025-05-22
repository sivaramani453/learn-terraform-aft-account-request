module "infra" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ctworkloadnonprod@proton.me"
    AccountName               = "workloadprod"
    ManagedOrganizationalUnit = "workload"
    SSOUserEmail              = "ctworkloadnonprod@proton.me"
    SSOUserFirstName          = "workload"
    SSOUserLastName           = "prod"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Name"           = "workloadprod"
    "Terraform"      = "True"
    "Env"            = "prod"
  }

  change_management_parameters = {
    change_requested_by = "siva"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "sandbox"
}
