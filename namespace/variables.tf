variable "namespace" {
  description = "value of namespace"
  type        = string
  default     = "module-test-namespace"
}

variable "business_unit" {
  description = "Area of the MOJ responsible for the service."
  default     = "Platforms"
}

variable "team_name" {
  description = "The name of your development team"
  default     = "webops"
}

variable "environment" {
  description = "The type of environment you're deploying to."
  default     = "development"
}

variable "infrastructure_support" {
  description = "The team responsible for managing the infrastructure. Should be of the form team-email."
  default     = "platforms@digital.justice.gov.uk"
}

variable "is_production" {
  default = "false"
}

variable "slack_channel" {
  description = "Team slack channel to use if we need to contact your team"
  default     = "cloud-platform"
}

variable "application" {
  description = "The name of the application"
  default     = "module-test-application"
}

variable "owner" {
  description = "The name of the person or team responsible for the application"
  default     = "Cloud Platform: platforms@digital.justice.gov.uk"
}

variable "source_code" {
  description = "The URL of the source code repository"
  default     = "github.com/ministryofjustice/cloud-platform-terraform-test-application"
}

# enable variables
variable "route53_enabled" {
  description = "Enable Route53"
  default     = "false"
}

variable "namespace_enabled" {
  description = "Enable namespace"
  default     = "false"
}

variable "rolebinding_enabled" {
  description = "Enable rolebinding"
  default     = "false"
  
}