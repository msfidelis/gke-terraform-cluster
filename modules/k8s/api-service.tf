resource "kubernetes_service" "microapi" {
  metadata {
    name = "microapi"
  }

  spec {
    selector {
      app = "microapi"
    }

    port {
      port        = 3000
      target_port = 3000
    }

    type = "NodePort"
  }
}