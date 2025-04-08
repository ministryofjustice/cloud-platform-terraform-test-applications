module "module_test_sqs" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-sqs?ref=5.1.0"

  # Queue configuration
  sqs_name        = "module-test-queue"
  encrypt_sqs_kms = "true"

  # Tags
  business_unit          = var.business_unit
  application            = var.application
  is_production         = var.is_production
  team_name             = var.team_name
  namespace             = var.namespace
  environment_name      = var.environment
  infrastructure_support = var.infrastructure_support

  depends_on = [ module.namespace_create, resource.kubernetes_deployment_v1.module_test_deployment ]
}

resource "aws_sqs_queue_policy" "module_test_sqs_policy" {
  queue_url = module.module_test_sqs.sqs_arn

  policy     = <<EOF
  {
    "Version": "2012-10-17",
    "Id": "${module.module_test_sqs.sqs_arn}/SQSDefaultPolicy",
    "Statement":
      [
        {
          "Effect": "Allow",
          "Principal": {"AWS": "*"},
          "Resource": "${module.module_test_sqs.sqs_arn}",
          "Action": "SQS:SendMessage"
        }
      ]
  }
  EOF
}
