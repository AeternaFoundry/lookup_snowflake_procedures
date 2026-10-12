variable "procedures_lookup" {
  description = <<EOT
Map of procedures_lookup, attributes below
Required:
    - database
    - schema
EOT

  type = map(object({
    database = string
    schema   = string
  }))
}

