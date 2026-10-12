output "procedures_lookup_id" {
  description = "Map of id values across all procedures_lookup, keyed the same as var.procedures_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_procedures.procedures_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "procedures_lookup_database" {
  description = "Map of database values across all procedures_lookup, keyed the same as var.procedures_lookup except keys with no database are omitted"
  value       = { for k, v in data.snowflake_procedures.procedures_lookup : k => v.database if v.database != null && length(v.database) > 0 }
}
output "procedures_lookup_procedures" {
  description = "Map of procedures values across all procedures_lookup, keyed the same as var.procedures_lookup except keys with no procedures are omitted"
  value       = { for k, v in data.snowflake_procedures.procedures_lookup : k => v.procedures if v.procedures != null && length(v.procedures) > 0 }
}
output "procedures_lookup_schema" {
  description = "Map of schema values across all procedures_lookup, keyed the same as var.procedures_lookup except keys with no schema are omitted"
  value       = { for k, v in data.snowflake_procedures.procedures_lookup : k => v.schema if v.schema != null && length(v.schema) > 0 }
}

