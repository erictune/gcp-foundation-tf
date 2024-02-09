variable "billing_account" {
  description = "The ID of the billing account to associate projects with"
  type        = string
  default     = "<please enter your billing account number here>"
}

variable "org_id" {
  description = "The organization id for the associated resources"
  type        = string
  default     = "1031013327772"
}
