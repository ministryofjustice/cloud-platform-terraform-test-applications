module "namespace_create" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-test-applications//namespace?ref=main"

  namespace_enabled = var.namespace_enabled
  route53_enabled   = var.route53_enabled
  rolebinding_enabled = var.rolebinding_enabled

  namespace = var.namespace

  business_unit = var.business_unit
  slack_channel = var.slack_channel
  application   = var.application
  owner         = var.owner
  source_code   = var.source_code
  team_name     = var.team_name
}