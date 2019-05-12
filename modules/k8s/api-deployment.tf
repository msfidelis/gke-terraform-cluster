resource "kubernetes_deployment" "microapi_deploy" {
  metadata {
    name = "microapi"
    labels {
      app = "microapi"
    }
  }

  spec {
    replicas = 10

    selector {
      match_labels {
        app = "microapi"
      }
    }

    template {
      metadata {
        labels {
          app = "microapi"
        }
      }

      spec {
        container {
            image = "msfidelis/micro-api:latest"
            name  = "microapi"

            port {
                container_port = 3000
            }

            env {
                name = "FOO"
                value = "BAR"
            }

          resources{
            limits{
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests{
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}