output "cloudwatch_log_streams_id" {
  description = "Map of id values across all cloudwatch_log_streams, keyed the same as var.cloudwatch_log_streams"
  value       = { for k, v in aws_cloudwatch_log_stream.cloudwatch_log_streams : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudwatch_log_streams_arn" {
  description = "Map of arn values across all cloudwatch_log_streams, keyed the same as var.cloudwatch_log_streams"
  value       = { for k, v in aws_cloudwatch_log_stream.cloudwatch_log_streams : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudwatch_log_streams_log_group_name" {
  description = "Map of log_group_name values across all cloudwatch_log_streams, keyed the same as var.cloudwatch_log_streams"
  value       = { for k, v in aws_cloudwatch_log_stream.cloudwatch_log_streams : k => v.log_group_name if v.log_group_name != null && length(v.log_group_name) > 0 }
}
output "cloudwatch_log_streams_name" {
  description = "Map of name values across all cloudwatch_log_streams, keyed the same as var.cloudwatch_log_streams"
  value       = { for k, v in aws_cloudwatch_log_stream.cloudwatch_log_streams : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudwatch_log_streams_region" {
  description = "Map of region values across all cloudwatch_log_streams, keyed the same as var.cloudwatch_log_streams"
  value       = { for k, v in aws_cloudwatch_log_stream.cloudwatch_log_streams : k => v.region if v.region != null && length(v.region) > 0 }
}

