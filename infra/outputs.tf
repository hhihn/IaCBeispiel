# Ausgaben nach dem Deployment
output "container_name" {
  description = "Name des Containers"
  value       = docker_container.nginx.name
}

output "container_id" {
  description = "ID des Containers"
  value       = docker_container.nginx.id
}

output "url" {
  description = "URL der Anwendung"
  value       = "http://localhost:8080"
}