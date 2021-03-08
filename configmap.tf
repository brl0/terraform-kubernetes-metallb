resource "kubernetes_config_map" "metallb" {
  metadata {
    name      = "metallb"
    namespace = "metallb-system"
  }

  data = {
    "config" = file("${path.module}/metallb.yaml")
  }
}
