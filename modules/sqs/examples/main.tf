module "sqs_application" {
  source = "../"

  namespace           = "module-sqstest-namespace"
  namespace_enabled   = true
  route53_enabled     = true
  rolebinding_enabled = true
}
