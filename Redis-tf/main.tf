# Deploy Redis using Helm on each AKS cluster
resource "helm_release" "redis" {
  name       = "redis-cluster"
  repository = var.redis_chart_url
  chart      = "redis"
  version    = var.redis_chart_version

  namespace       = "default"
  create_namespace = true

  set {
    name  = "cluster.enabled"
    value = "true"
  }
  set {
    name  = "cluster.slaveCount"
    value = "2" # Number of slave nodes
  }

}
