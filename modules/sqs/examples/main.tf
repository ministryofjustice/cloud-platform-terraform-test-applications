locals {
  module_source = "github.com/ministryofjustice/cloud-platform-terraform-test-applications/modules/sqs?ref=main"
}

module "sqs_application" {
  source = local.module_source

  namespace = "module-sqstest-namespace"
  module_release = "v5.1.0"
  namespace_module_release = "main"
}