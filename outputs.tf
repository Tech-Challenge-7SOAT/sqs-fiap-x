output "sqs_queue_url" {
  value = aws_sqs_queue.fiap_x_queue.id
}

output "sqs_queue_arn" {
  value = aws_sqs_queue.fiap_x_queue.arn
}