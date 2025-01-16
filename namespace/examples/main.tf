module "namespace_create" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-test-applications/namespace?ref=${var.namespace_module_release}"

  namespace_enabled = "true"
  route53_enabled   = "true"
  rolebinding_enabled = "true"

  namespace = var.namespace

  business_unit = var.business_unit
  slack_channel = var.slack_channel
  application   = var.application
  owner         = var.owner
  source_code   = var.source_code
  team_name     = var.team_name
}