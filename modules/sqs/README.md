# cloud-platform-terraform-template

[![Releases](https://img.shields.io/github/v/release/ministryofjustice/cloud-platform-terraform-test-applications.svg)](https://github.com/ministryofjustice/cloud-platform-terraform-test-applictions/releases)

This Terraform module will create an SQS queue and a test application that sends messages to the queue.

## Usage

```hcl
module "sqs_application" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-test-applications/modules/sqs?ref=${var.sqs_test_application_release}"

  namespace = "module-sqstest-namespace"
  sqs_module_release = "v5.1.0"
  namespace_module_release = "main"
}
```

See the [examples/](examples/) folder for more information.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.2.5 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 4.27.0 |
| kubernetes | ~> 2.18.0|
| github | ~> 5.17.0 |
| terraform | >= 1.2.5 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| sqs | github.com/ministryofjustice/cloud-platofrm-terraform-sqs | v5.1.0 |
| namespace | github.com/ministryofjustice/cloud-platform-terraform-test-applications/namespace | main |

## Resources

| Name |
|------|
| aws_sqs_queue_policy |
| kubernetes_deployment_v1 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| namespace | The namespace to deploy the test application to | `string` |  | yes |
| sqs_module_release | The version of the SQS module to use | `string` |  | yes |
| namespace_module_release | The version of the namespace module to use | `string` |  | yes |
| namespace_enabled | Enable the namespace module | `bool` |  | yes |
| route53_enabled | Enable the route53 module | `bool` |  | yes |
| rolebinding_enabled | Enable the rolebinding module | `bool` |  | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Tags

Some of the inputs for this module are tags. All infrastructure resources must be tagged to meet the MOJ Technical Guidance on [Documenting owners of infrastructure](https://technical-guidance.service.justice.gov.uk/documentation/standards/documenting-infrastructure-owners.html).

You should use your namespace variables to populate these. See the [Usage](#usage) section for more information.

## Reading Material

<!-- Add links to useful documentation -->

- [Cloud Platform user guide](https://user-guide.cloud-platform.service.justice.gov.uk/#cloud-platform-user-guide)
