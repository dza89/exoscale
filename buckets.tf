resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket   = "my-terraform-bucket"

  # Disable unsupported features
  lifecycle {
    ignore_changes = [
      object_lock_configuration,
      tags
    ]
  }
}
