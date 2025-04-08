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
  # visibility_timeout_seconds = 30  # Uncomment if you need to override defaults
  # message_retention_seconds = 345600
  # max_message_size = 262144
  # delay_seconds = 0
  # receive_wait_time_seconds = 0
  # fifo_queue = false
  # kms_data_key_reuse_period_seconds = 300
}