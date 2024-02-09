module "cs-svc-xf-prod-netsvc-eab" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "prod-eab-netservice"
  project_id      = "xf-prod-netsvc-eab"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs.ids["Production"]

  shared_vpc = module.cs-xf-vpc-host-prod.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-prod-netsvc-eab.name
  group_role = "roles/viewer"
}

module "cs-svc-xf-prod-netsvc-vm" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "prod-vm-netservice"
  project_id      = "xf-prod-netsvc-vm"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs.ids["Production"]

  shared_vpc = module.cs-xf-vpc-host-prod.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-prod-netsvc-vm.name
  group_role = "roles/viewer"
}

module "cs-svc-xf-nonprod-netsvc-eab" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "nonprod-eab-netservice"
  project_id      = "xf-nonprod-netsvc-eab"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs.ids["Non-Production"]

  shared_vpc = module.cs-xf-vpc-host-nonprod.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-nonprod-netsvc-eab.name
  group_role = "roles/viewer"
}

module "cs-svc-xf-nonprod-netsvc-vm" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "nonprod-vm-netservice"
  project_id      = "xf-nonprod-netsvc-vm"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs.ids["Non-Production"]

  shared_vpc = module.cs-xf-vpc-host-nonprod.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-nonprod-netsvc-vm.name
  group_role = "roles/viewer"
}
