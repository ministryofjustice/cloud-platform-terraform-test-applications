module "sqs_application" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-test-applications/modules/sqs?ref=main"

  namespace = "module-sqstest-namespace"
  module_release = "v5.1.0"
  namespace_module_release = "main"
}