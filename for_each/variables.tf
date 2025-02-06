variable "instances" {
  type        = map
  default     = {
    mysql ="t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
  }
}
variable "domain_name" {
  
  default     = "noor3.online"
}
variable "zone_id"{
    default = "Z00744901YWTWBJOOXOA1"

}