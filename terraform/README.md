# Terraform — Portafolio en DigitalOcean

Despliega el portafolio (Nuxt 3 SSR) en **DigitalOcean App Platform** y configura el dominio `martindtv.dev`.

## Requisitos

- Terraform >= 1.5
- Cuenta de DigitalOcean con [Personal Access Token](https://cloud.digitalocean.com/account/api/tokens) (scope: read + write).
- Repositorio `Vazquez1240/portafolio` conectado a DigitalOcean en [Apps → Settings → GitHub](https://cloud.digitalocean.com/apps) (autorización one-time vía UI).
- App password de Gmail para el endpoint `/api/sendEmailForUser`.

## Uso

```bash
cd terraform
cp terraform.tfvars.example terraform.tfvars
# edita terraform.tfvars con tus valores

terraform init
terraform plan
terraform apply
```

Tras `apply`:

1. Copia los `domain_nameservers` del output y configúralos en el registrador de `martindtv.dev`.
2. La propagación DNS puede tardar unos minutos. App Platform emite el certificado SSL automáticamente.

## Recursos creados

- `digitalocean_app.portafolio` — App Platform service (Node, build con pnpm, SSR).
- `digitalocean_domain.portafolio` — zona DNS de `martindtv.dev`.
- `digitalocean_record.apex` / `www` — CNAMEs al ingress de la app.

## Costos estimados

- `basic-xxs`: ~$5/mes
- Dominio DNS gestionado: gratis (el registro lo pagas en tu registrador)

## Notas

- `terraform.tfvars` está en `.gitignore`. No lo commitees.
- Para cambiar de plan: ajusta `instance_size_slug` (ej. `basic-xs`, `professional-xs`).
- Para borrar todo: `terraform destroy`.
