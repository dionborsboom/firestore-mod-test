locals {
  import = "${var.import == true ? ["conditionalimporthack"] : []}"
}

import {
  for_each = toset(local.import)
  to = google_firestore_database.database
  id = "projects/${var.project_id}/databases/${var.name}"
}

# INDEX_ID is server generated. No way to import based on the information we have
# Also not sure how to enable / disable this specific import
# import {
#   for_each = { for idx, obj in tolist(var.indexes) : idx => obj }
#   to = google_firestore_index.index[each.key]
#   id = "projects/${var.project_id}/databases/${var.name}/collectionGroups/${each.value.kind}/indexes/INDEX_ID"
# }