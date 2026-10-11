variable "mtls_certificate_associations_lookup" {
  description = <<EOT
Map of mtls_certificate_associations_lookup, attributes below
Required:
    - account_id
    - mtls_certificate_id
EOT

  type = map(object({
    account_id          = string
    mtls_certificate_id = string
  }))
}

