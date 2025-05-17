variable "project_name" {
  type        = string
  description = "Nome do projeto"

}

variable "region" {
  type        = string
  description = "Região default do projeto"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR da VPC"

}

variable "vpc_additional_cidrs" {
  type        = list(string)
  default     = []
  description = "Lista de CIDR's adicionais da VPC"
}

variable "public_subnets" {
  description = "Lista de Public Subnets da VPC"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "private_subnets" {
  description = "Lista de Private Subnets da VPC"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}
variable "database_subnets" {
  description = "Lista de Database Subnets da VPC"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}
