variable "aws_region" {
  description = "AWS region"
  default     = "eu-west-3"
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.1.0.0/16"
}


variable "cidr_block_private_A" {
  description = "CIDR block for the first private subnet."
  default     = "10.1.1.0/24"
}

variable "cidr_block_public_A" {
  description = "CIDR block for the first public subnet."
  default     = "10.1.2.0/24"
}

variable "cidr_block_private_B" {
  description = "CIDR block for the second private subnet."
  default     = "10.1.3.0/24"
}

variable "cidr_block_public_B" {
  description = "CIDR block for the second public subnet."
  default     = "10.1.4.0/24"
}

variable "AZ_A" {
  description = "Availability Zone A."
  default     = "eu-west-3a"
}

variable "AZ_B" {
  description = "Availability Zone B."
  default     = "eu-west-3b"
}

variable "alb_name" {
  description = "The name of the ALB"
  type        = string
  default = "my-alb-name"
}



variable "tg_name" {
  description = "The name of the target group"
  type        = string
  default = "my_tg"

}

variable "tags" {
  description = "A map of tags to assign to the ALB and target group"
  type        = map(string)
  default     = {}
}
variable "healthy_threshold" {
  description = "The number of consecutive health checks successes required before considering an unhealthy target healthy."
  type        = number
  default     = 3
}

variable "unhealthy_threshold" {
  description = "The number of consecutive health check failures required before considering a healthy target unhealthy."
  type        = number
  default     = 3
}

variable "timeout" {
  description = "The amount of time, in seconds, during which no response means a failed health check."
  type        = number
  default     = 5
}

variable "health_check_path" {
  description = "The destination for the health check request, which is the path inside the app."
  type        = string
  default     = "/"
}

variable "health_check_interval" {
  description = "The approximate amount of time, in seconds, between health checks of an individual target."
  type        = number
  default     = 30
}
