resource "aws_sqs_queue" "fiap_x_queue" {
  name                      = "fiap-x-queue"
  visibility_timeout_seconds = 30
  message_retention_seconds  = 86400
  delay_seconds              = 0
  receive_wait_time_seconds  = 0
  fifo_queue                 = false
}

resource "aws_sqs_queue_policy" "fiap_x_queue_policy" {
  queue_url = aws_sqs_queue.fiap_x_queue.id

  policy = jsonencode({
    Version   = "2012-10-17",
    Statement = [
      {
        Effect    = "Allow",
        Principal = "*",
        Action    = "sqs:SendMessage",
        Resource  = aws_sqs_queue.fiap_x_queue.arn
      }
    ]
  })
}

output "sqs_queue_url" {
  value = aws_sqs_queue.fiap_x_queue.id
}

output "sqs_queue_arn" {
  value = aws_sqs_queue.fiap_x_queue.arn
}