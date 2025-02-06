resource "aws_route53_record" "expense"{
    count=3
    zone_id = var.zone_id
    name = "${var.instances[count.index]}.${var.domain_name}"#interpolation
    type = "A"
    ttl = 1
    records = [aws_instance.expense[count.index].private_ip]#list type
}
resource "aws_route53_record" "forward"{
    count=3
    zone_id = var.zone_id
    name = "${var.domain_name}"#interpolation
    type = "A"
    ttl = 1
    records = [aws_instance.expense[count.index].public_ip]
    allow_overwrite = true #list type
}