variable "do_token" {
  description = "Token de la API de DigitalOcean (Personal Access Token con permisos read/write)."
  type        = string
  sensitive   = true
}

variable "app_name" {
  description = "Nombre de la app en DigitalOcean App Platform."
  type        = string
  default     = "portafolio-martindtv"
}

variable "region" {
  description = "Región donde desplegar la app (ej. nyc, sfo3, fra1)."
  type        = string
  default     = "nyc"
}

variable "instance_size_slug" {
  description = "Tamaño de la instancia. basic-xxs es el plan más barato (~$5/mes)."
  type        = string
  default     = "basic-xxs"
}

variable "github_repo" {
  description = "Repositorio de GitHub en formato owner/repo."
  type        = string
  default     = "Vazquez1240/portafolio"
}

variable "github_branch" {
  description = "Rama de GitHub para desplegar."
  type        = string
  default     = "main"
}

variable "domain_name" {
  description = "Dominio principal del portafolio."
  type        = string
  default     = "martindtv.dev"
}

variable "email_user" {
  description = "Usuario SMTP de Gmail (EMAIL_USER)."
  type        = string
  sensitive   = true
}

variable "email_pass" {
  description = "App password de Gmail (EMAIL_PASS)."
  type        = string
  sensitive   = true
}
