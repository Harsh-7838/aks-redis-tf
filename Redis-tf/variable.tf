# Define variables
variable "redis_chart_version" {
  description = "Version of the Redis Helm chart"
  type        = string
  default     = "15.0.6"
}

variable "redis_chart_url" {
  description = "Version of the Redis Helm chart"
  type        = string
  default     = "https://charts.bitnami.com/bitnami"
}