module "cs-folders-iam-0-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs.ids["Non-Production"],
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:idp-admins@xericfortune.joonix.net",
    ]
  }
}

module "cs-folders-iam-0-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs.ids["Non-Production"],
  ]
  bindings = {
    "roles/container.admin" = [
      "group:idp-admins@xericfortune.joonix.net",
    ]
  }
}

module "cs-folders-iam-1-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs.ids["Development"],
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@xericfortune.joonix.net",
    ]
  }
}

module "cs-folders-iam-1-containeradmin" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [
    module.cs-envs.ids["Development"],
  ]
  bindings = {
    "roles/container.admin" = [
      "group:gcp-developers@xericfortune.joonix.net",
    ]
  }
}

module "cs-projects-iam-2-loggingviewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-xf-logging-common.project_id,
  ]
  bindings = {
    "roles/logging.viewer" = [
      "group:gcp-logging-viewers@xericfortune.joonix.net",
    ]
  }
}

module "cs-projects-iam-2-loggingprivateLogViewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-xf-logging-common.project_id,
  ]
  bindings = {
    "roles/logging.privateLogViewer" = [
      "group:gcp-logging-viewers@xericfortune.joonix.net",
    ]
  }
}

module "cs-projects-iam-2-bigquerydataViewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-xf-logging-common.project_id,
  ]
  bindings = {
    "roles/bigquery.dataViewer" = [
      "group:gcp-logging-viewers@xericfortune.joonix.net",
    ]
  }
}

module "cs-projects-iam-3-bigquerydataViewer" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-xf-logging-common.project_id,
  ]
  bindings = {
    "roles/bigquery.dataViewer" = [
      "group:gcp-security-admins@xericfortune.joonix.net",
    ]
  }
}

module "cs-service-projects-iam-4-containerclusterAdmin" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-svc-xf-prod-netsvc-eab.project_id,
  ]
  bindings = {
    "roles/container.clusterAdmin" = [
      "group:${module.cs-gg-prod-netsvc-eab.id}",
    ]
  }
}

module "cs-service-projects-iam-4-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-svc-xf-prod-netsvc-eab.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-prod-netsvc-eab.id}",
    ]
  }
}

module "cs-service-projects-iam-5-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-svc-xf-prod-netsvc-vm.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-prod-netsvc-vm.id}",
    ]
  }
}

module "cs-service-projects-iam-6-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-svc-xf-nonprod-netsvc-eab.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-nonprod-netsvc-eab.id}",
    ]
  }
}

module "cs-service-projects-iam-7-computeinstanceAdminv1" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "~> 7.4"

  projects = [
    module.cs-svc-xf-nonprod-netsvc-vm.project_id,
  ]
  bindings = {
    "roles/compute.instanceAdmin.v1" = [
      "group:${module.cs-gg-nonprod-netsvc-vm.id}",
    ]
  }
}
