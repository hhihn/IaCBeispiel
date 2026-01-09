variable "container_name" {
  description = "Name für den Container"
  type        = string
  default     = "terraform-nginx"
}

variable "external_port" {
  description = "Externer Port"
  type        = number
  default     = 8080
}