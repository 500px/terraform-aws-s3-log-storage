output "bucket_domain_name" {
  value       = "${element(concat(aws_s3_bucket.default.*.bucket_domain_name, list("")), 0)}"
  description = "FQDN of bucket"
}

output "bucket_id" {
  value       = "${element(concat(aws_s3_bucket.default.*.id, list("")), 0)}"
  description = "Bucket Name (aka ID)"
}

output "bucket_arn" {
  value       = "${element(concat(aws_s3_bucket.default.*.arn, list("")), 0)}"
  description = "Bucket ARN"
}

output "prefix" {
  value       = "${var.prefix}"
  description = "Prefix configured for lifecycle rules"
}
