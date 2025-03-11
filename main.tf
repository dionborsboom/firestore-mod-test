resource "google_firestore_database" "datastore_database" {
  project                 = var.project_id
  name                    = var.name
  location_id             = "eur3"
  type                    = "DATASTORE_MODE"
  app_engine_integration_mode = "DISABLED"
}