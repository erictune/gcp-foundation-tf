# Required if using User ADCs (Application Default Credentials) for Cloud Identity API.
provider "google-beta" {
  user_project_override = true
  billing_project       = "PROJECT_WITH_CLOUD_IDENTITY_API_ENABLED"
}

# In order to create google groups, the calling identity should have at least the
# Group Admin role in Google Admin. More info: https://support.google.com/a/answer/2405986

module "cs-gg-prod-netsvc-eab" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "prod-netsvc-eab@xericfortune.joonix.net"
  display_name = "prod-netsvc-eab"
  customer_id  = data.google_organization.org.directory_customer_id
  members = [
    "charlie@xericfortune.joonix.net",
  ]
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-prod-netsvc-vm" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "prod-netsvc-vm@xericfortune.joonix.net"
  display_name = "prod-netsvc-vm"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-nonprod-netsvc-eab" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "nonprod-netsvc-eab@xericfortune.joonix.net"
  display_name = "nonprod-netsvc-eab"
  customer_id  = data.google_organization.org.directory_customer_id
  members = [
    "charlie@xericfortune.joonix.net",
  ]
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-nonprod-netsvc-vm" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "nonprod-netsvc-vm@xericfortune.joonix.net"
  display_name = "nonprod-netsvc-vm"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}
