resource "aws_sqs_queue" "fiap_x_queue" {
  name                      = "fiap-x-queue"
  visibility_timeout_seconds = 30
  message_retention_seconds  = 86400
  delay_seconds              = 0
  receive_wait_time_seconds  = 0
  fifo_queue                 = false
}
