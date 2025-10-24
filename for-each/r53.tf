resource "aws_route53_record" "expense" {
  for_each = aws_instance.this
  zone_id = var.zone_id
  name    = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip] #[aws_instance.expense[count.index].private_ip]
  allow_overwrite = true
}

# resource "aws_route53_record" "frotend" {
#   count = 3
#   zone_id = var.zone_id
#   name    = "${var.domain_name}"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.expense[1].public_ip]
#   allow_overwrite = true
# }