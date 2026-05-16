terraform {
  required_version = ">= 1.5.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.40"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_app" "portafolio" {
  spec {
    name   = var.app_name
    region = var.region

    domain {
      name = var.domain_name
      type = "PRIMARY"
      zone = var.domain_name
    }

    domain {
      name = "www.${var.domain_name}"
      type = "ALIAS"
      zone = var.domain_name
    }

    service {
      name               = "web"
      instance_count     = 1
      instance_size_slug = var.instance_size_slug
      http_port          = 3000

      github {
        repo           = var.github_repo
        branch         = var.github_branch
        deploy_on_push = true
      }

      build_command = "npm install -g pnpm@9 && pnpm install --frozen-lockfile && pnpm run build"
      run_command   = "node .output/server/index.mjs"

      environment_slug = "node-js"

      env {
        key   = "NODE_ENV"
        value = "production"
        scope = "RUN_AND_BUILD_TIME"
        type  = "GENERAL"
      }

      env {
        key   = "HOST"
        value = "0.0.0.0"
        scope = "RUN_TIME"
        type  = "GENERAL"
      }

      env {
        key   = "PORT"
        value = "3000"
        scope = "RUN_TIME"
        type  = "GENERAL"
      }

      env {
        key   = "EMAIL_USER"
        value = var.email_user
        scope = "RUN_TIME"
        type  = "SECRET"
      }

      env {
        key   = "EMAIL_PASS"
        value = var.email_pass
        scope = "RUN_TIME"
        type  = "SECRET"
      }

      health_check {
        http_path             = "/"
        initial_delay_seconds = 30
        period_seconds        = 30
        timeout_seconds       = 5
        failure_threshold     = 5
      }
    }
  }
}

resource "digitalocean_domain" "portafolio" {
  name = var.domain_name
}

resource "digitalocean_record" "apex" {
  domain = digitalocean_domain.portafolio.name
  type   = "CNAME"
  name   = "@"
  value  = "${digitalocean_app.portafolio.default_ingress}."
  ttl    = 3600
}

resource "digitalocean_record" "www" {
  domain = digitalocean_domain.portafolio.name
  type   = "CNAME"
  name   = "www"
  value  = "${digitalocean_app.portafolio.default_ingress}."
  ttl    = 3600
}
