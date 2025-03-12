locals {
  import = "${var.import == true ? ["conditionalimporthack"] : []}"
}

import {
  for_each = toset(local.import)
  to = google_firestore_database.database
  id = "projects/${var.project_id}/databases/${var.name}"
}
