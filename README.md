# cloud-platform-terraform-template

[![Releases](https://img.shields.io/github/v/release/ministryofjustice/cloud-platform-terraform-template.svg)](https://github.com/ministryofjustice/cloud-platform-terraform-template/releases)

This Terraform module will _create a ..._ for use on the Cloud Platform.

## Usage

```hcl
module "template" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-template?ref=version" # use the latest release

  # Configuration
  # ...

  # Tags
  business_unit          = var.business_unit
  application            = var.application
  is_production          = var.is_production
  team_name              = var.team_name
  namespace              = var.namespace
  environment_name       = var.environment
  infrastructure_support = var.infrastructure_support
}
```

See the [examples/](examples/) folder for more information.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Tags

Some of the inputs for this module are tags. All infrastructure resources must be tagged to meet the MOJ Technical Guidance on [Documenting owners of infrastructure](https://technical-guidance.service.justice.gov.uk/documentation/standards/documenting-infrastructure-owners.html).

You should use your namespace variables to populate these. See the [Usage](#usage) section for more information.

## Reading Material

<!-- Add links to useful documentation -->

- [Cloud Platform user guide](https://user-guide.cloud-platform.service.justice.gov.uk/#cloud-platform-user-guide)
