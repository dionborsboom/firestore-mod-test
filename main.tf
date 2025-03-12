resource "google_firestore_database" "database" {
  project                 = var.project_id
  name                    = var.name
  location_id             = "eur3"
  type                    = "DATASTORE_MODE"
  app_engine_integration_mode = "DISABLED"
  point_in_time_recovery_enablement = var.pitr
}