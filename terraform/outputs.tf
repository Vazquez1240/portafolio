output "app_id" {
  description = "ID de la app en DigitalOcean."
  value       = digitalocean_app.portafolio.id
}

output "app_live_url" {
  description = "URL pública generada por App Platform."
  value       = digitalocean_app.portafolio.live_url
}

output "app_default_ingress" {
  description = "Hostname por defecto (apunta aquí los CNAME si gestionas DNS afuera)."
  value       = digitalocean_app.portafolio.default_ingress
}

output "domain_nameservers" {
  description = "Nameservers de DigitalOcean. Configúralos en tu registrador para activar el dominio."
  value       = [
    "ns1.digitalocean.com",
    "ns2.digitalocean.com",
    "ns3.digitalocean.com",
  ]
}
