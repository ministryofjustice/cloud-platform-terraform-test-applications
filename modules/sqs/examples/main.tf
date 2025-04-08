module "sqs_application" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-sqs?ref=5.1.0"

  namespace = "module-sqstest-namespace"
  module_release = "5.1.0"
  namespace_module_release = "v5.1.0"
  route53_enabled = "false"
  namespace_enabled = true
  rolebinding_enabled = true
  
  # Required SQS module variables
  business_unit = "test"
  application = "test-app"
  is_production = false
  team_name = "test-team"
  environment = "test"
  infrastructure_support = "test@example.com"
}