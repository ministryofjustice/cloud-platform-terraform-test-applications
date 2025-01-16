module "module_test_sqs" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-sqs?ref=${var.module_release}" # use the latest release

  # Queue configuration
  sqs_name        = "module-test-queue"
  encrypt_sqs_kms = "true"

  # Tags
  business_unit          = var.business_unit
  application            = var.application
  is_production          = var.is_production
  team_name              = var.team_name # also used for naming the queue
  namespace              = var.namespace
  environment_name       = var.environment
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
          "Action": "SQS:SendMessage",
          "Condition":
            {
              "ArnEquals":
                {
                  "aws:SourceArn": "${module.module_test_sqs.topic_arn}"
                }
              }
        }
      ]
  }
  EOF
  depends_on = [module.module_test_sqs]
}

module "namespace_create" {
  source = "../../namespace"

  namespace_enabled = "true"
  route53_enabled   = "true"
  rolebinding_enabled = "true"

  namespace = var.namespace

  business_unit = var.business_unit
  slack_channel = var.slack_channel
  application   = var.application
  owner         = var.owner
  source_code   = var.source_code
  team_name     = var.team_name
}