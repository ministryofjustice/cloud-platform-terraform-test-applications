resource "kubernetes_namespace_v1" "namespace" {
  count = var.namespace_enabled == "true" ? 1 : 0
  metadata {
    annotations = {
      "cloud-platform.justice.gov.uk/business-unit" = var.business_unit
      "cloud-platform.justice.gov.uk/slack-channel" = var.slack_channel
      "cloud-platform.justice.gov.uk/application"   = var.application
      "cloud-platform.justice.gov.uk/owner"         = var.owner
      "cloud-platform.justice.gov.uk/source-code"   = var.source_code
      "cloud-platform.justice.gov.uk/team-name"     = var.team_name
    }

    labels = {
      "cloud-platform.justice.gov.uk/is-production"    = "false"
      "cloud-platform.justice.gov.uk/environment-name" = "development"
      "pod-security.kubernetes.io/enforce"             = "restricted"
    }

    name = var.namespace
  }
}