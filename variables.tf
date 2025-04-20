variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
}

variable "zone_id" {
  default = "Z06398542K2UFV583KXS5"
}

variable "tools" {
  default = {

    vault = {
      instance_type     = "t3.small"
      port              = 8200
      root_block_device = 35
      iam_policy = {
        Action   = []
        Resource = []
      }
    }

    github-runner = {
      instance_type     = "t3.small"
      port              = 443 # Dummy port
      root_block_device = 45
      iam_policy = {
        Action   = ["*"]
        Resource = []
      }
    }

  }
}

