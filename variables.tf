variable "healthcare_dicom_store_iam_members" {
  description = <<EOT
Map of healthcare_dicom_store_iam_members, attributes below
Required:
    - dicom_store_id
    - member
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    dicom_store_id = string
    member         = string
    role           = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

