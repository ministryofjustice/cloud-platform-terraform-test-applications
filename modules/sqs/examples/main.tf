module "sqs_application" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-test-applications//modules/sqs?ref=fc1d2870ad2e3928f574e81ee804b0ddcca8058f"

  namespace = "module-sqstest-namespace"
  module_release = "v5.1.0"
  namespace_module_release = "main"
}