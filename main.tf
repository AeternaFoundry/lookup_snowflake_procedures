data "snowflake_procedures" "procedures_lookup" {
  for_each = var.procedures_lookup

  database = each.value.database
  schema   = each.value.schema
}

