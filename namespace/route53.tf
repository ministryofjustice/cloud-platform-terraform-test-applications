resource "aws_route53_zone" "route53_zone" {
  count = var.route53_enabled == "true" ? 1 : 0
  name  = "${var.namespace}.service.justice.gov.uk"

  tags = {
    team_name              = var.team_name
    business-unit          = var.business_unit
    application            = var.application
    is-production          = var.is_production
    environment-name       = var.environment
    owner                  = var.team_name
    infrastructure-support = var.infrastructure_support
    namespace              = var.namespace
  }
  depends_on = [kubernetes_namespace_v1.namespace]
}

resource "kubernetes_secret" "route53_zone_sec" {
  count = var.route53_enabled == "true" ? 1 : 0
  metadata {
    name      = "${var.namespace}-route53-zone-output"
    namespace = var.namespace
  }

  data = {
    zone_id = aws_route53_zone.route53_zone[count.index].zone_id
  }

  depends_on = [aws_route53_zone.route53_zone]
}
