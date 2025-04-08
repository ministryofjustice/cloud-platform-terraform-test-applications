module "sqs_application" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-sqs?ref=5.1.0"

  # Required arguments
  sqs_name = "test-queue"
  environment_name = "test"

  # Tags (all required)
  business_unit = "test"
  application = "test-app"
  is_production = "false"  # Changed to string as per module requirements
  team_name = "test-team"
  namespace = "module-sqstest-namespace"
  infrastructure_support = "test@example.com"

  # Optional SQS configuration
  encrypt_sqs_kms = true
}