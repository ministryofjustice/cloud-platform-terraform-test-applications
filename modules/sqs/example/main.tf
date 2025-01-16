module "sqs_application" {
  source = "./modules/sqs"

  namespace = "module-sqstest-namespace"
  module_release = "v5.1.0"
}