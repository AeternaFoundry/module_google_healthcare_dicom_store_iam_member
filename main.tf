resource "google_healthcare_dicom_store_iam_member" "healthcare_dicom_store_iam_members" {
  for_each = var.healthcare_dicom_store_iam_members

  dicom_store_id = each.value.dicom_store_id
  member         = each.value.member
  role           = each.value.role

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

