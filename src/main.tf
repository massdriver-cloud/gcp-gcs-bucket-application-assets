resource "google_storage_bucket" "main" {
  name                        = var.md_metadata.name_prefix
  labels                      = var.md_metadata.default_tags
  location                    = var.bucket.region
  force_destroy               = var.bucket.force_destroy
  # Enables IAM permissions to bucket, revokes ACL permissions
  uniform_bucket_level_access = true
}