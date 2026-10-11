data "cloudflare_mtls_certificate_associations" "mtls_certificate_associations_lookup" {
  for_each = var.mtls_certificate_associations_lookup

  account_id          = each.value.account_id
  mtls_certificate_id = each.value.mtls_certificate_id
}

