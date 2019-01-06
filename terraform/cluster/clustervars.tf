# vars here for now

variable "location" {
    type = "string"
	default = "UK South"
}

variable "rg_name" {
    type = "string"
	default = "tf_rg_002"
}

variable "vn_name" {
    type = "string"
	default = "tf_vn_002"
}

variable "vn_range" {
    type = "string"
	default = "10.0.0.0/16"
}

variable "subn_name" {
    type = "string"
	default = "tf_subn_002"
}

variable "subn_range" {
    type = "string"
	default = "10.0.2.0/24"
}

variable "pIP" {
    type = "string"
	default = "tf_pIP_002"
}

variable "loadbal" {
    type = "string"
	default = "tf_lb_002"
}


variable "lbpool" {
    type = "string"
	default = "tf_lbpool_002"
}

variable "mach" {
    type = "string"
	default = "testmach"
}

variable "ni" {
    type = "string"
	default = "ni"
}