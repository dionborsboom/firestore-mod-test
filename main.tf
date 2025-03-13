resource "google_firestore_database" "database" {
  project                           = var.project_id
  name                              = var.name
  location_id                       = "eur3"
  type                              = "DATASTORE_MODE"
  app_engine_integration_mode       = "DISABLED"
  point_in_time_recovery_enablement = var.pitr
}

resource "google_firestore_index" "index" {
  for_each = { for idx, obj in tolist(var.indexes) : idx => obj }

  project    = var.project_id
  database   = google_firestore_database.database.name
  collection = each.value.kind

  query_scope = "COLLECTION_RECURSIVE"
  api_scope = "DATASTORE_MODE_API"

  dynamic "fields" {
    for_each = each.value.properties

    content {
      field_path = fields.value.name
      order      = fields.value.direction
    }
  }
}