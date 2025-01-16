resource "kubernetes_deployment_v1" "module_test_deployment" {
  metadata {
    name = "module-test-deployment"
    labels = {
      test = "ModuleTest"
    }
    namespace = var.namespace
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        test = "ModuleTest"
      }
    }

    template {
      metadata {
        labels = {
          test = "ModuleTest"
        }
      }

      spec {
        container {
          image = "nginx:1.21.6"
          name  = "nginx"

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }

          liveness_probe {
            http_get {
              path = "/"
              port = 80

              http_header {
                name  = "X-Custom-Header"
                value = "Awesome"
              }
            }

            initial_delay_seconds = 3
            period_seconds        = 3
          }
        }
      }
    }
  }
  depends_on = [module.namespace_create]
}