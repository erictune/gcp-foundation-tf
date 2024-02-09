module "cs-xf-vpc-host-prod" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.2"

  name       = "vpc-host-prod"
  project_id = "xf-vpc-host-prod"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account                = var.billing_account
  enable_shared_vpc_host_project = true
}

module "cs-xf-vpc-host-nonprod" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.2"

  name       = "vpc-host-nonprod"
  project_id = "xf-vpc-host-nonprod"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account                = var.billing_account
  enable_shared_vpc_host_project = true
}

module "cs-xf-logging-common" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.2"

  name       = "logging"
  project_id = "xf-logging-common"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account = var.billing_account
}

module "cs-xf-monitoring-prod" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.2"

  name       = "monitoring-prod"
  project_id = "xf-monitoring-prod"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account = var.billing_account
}

module "cs-xf-monitoring-nonprod" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.2"

  name       = "monitoring-nonprod"
  project_id = "xf-monitoring-nonprod"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account = var.billing_account
}

module "cs-xf-monitoring-dev" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.2"

  name       = "monitoring-dev"
  project_id = "xf-monitoring-dev"
  org_id     = var.org_id
  folder_id  = module.cs-common.id

  billing_account = var.billing_account
}
