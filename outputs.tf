output "mtls_certificate_associations_lookup_account_id" {
  description = "Map of account_id values across all mtls_certificate_associations_lookup, keyed the same as var.mtls_certificate_associations_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_mtls_certificate_associations.mtls_certificate_associations_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "mtls_certificate_associations_lookup_mtls_certificate_id" {
  description = "Map of mtls_certificate_id values across all mtls_certificate_associations_lookup, keyed the same as var.mtls_certificate_associations_lookup except keys with no mtls_certificate_id are omitted"
  value       = { for k, v in data.cloudflare_mtls_certificate_associations.mtls_certificate_associations_lookup : k => v.mtls_certificate_id if v.mtls_certificate_id != null && length(v.mtls_certificate_id) > 0 }
}
output "mtls_certificate_associations_lookup_service" {
  description = "Map of service values across all mtls_certificate_associations_lookup, keyed the same as var.mtls_certificate_associations_lookup except keys with no service are omitted"
  value       = { for k, v in data.cloudflare_mtls_certificate_associations.mtls_certificate_associations_lookup : k => v.service if v.service != null && length(v.service) > 0 }
}
output "mtls_certificate_associations_lookup_status" {
  description = "Map of status values across all mtls_certificate_associations_lookup, keyed the same as var.mtls_certificate_associations_lookup except keys with no status are omitted"
  value       = { for k, v in data.cloudflare_mtls_certificate_associations.mtls_certificate_associations_lookup : k => v.status if v.status != null && length(v.status) > 0 }
}

