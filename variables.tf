variable "bu" {
  type = list(object({
    bu_name = string
    fabric_capacity = string
    type = string
  }))
  default = [
    {
      bu_name           = "BU1"
      fabric_capacity   = "4BA7A1ED-A4CA-4AD5-8759-638B88FD4207"
      type              = "waste"
    },{
      bu_name           = "BU2"
      fabric_capacity   = "4BA7A1ED-A4CA-4AD5-8759-638B88FD4207"
      type              = "water"
    },{
      bu_name           = "BU3"
      fabric_capacity   = "4BA7A1ED-A4CA-4AD5-8759-638B88FD4207"
      type              = "energy"
    }
  ]
}