module "namespace_create" {
  source = "../"

  namespace_enabled   = true
  route53_enabled     = true
  rolebinding_enabled = true

  namespace = "module-test-namespace"

  business_unit = "Platforms"
  slack_channel = "cloud-platform"
  application   = "module-test-application"
  owner         = "Cloud Platform: platforms@digital.justice.gov.uk"
  source_code   = "github.com/ministryofjustice/cloud-platform-terraform-test-application"
  team_name     = "webops"
}
