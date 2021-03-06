// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

variable "compartment_ocid" {
  description = "(Required) (Updatable) The OCID of the compartment where to create all resources"
  type        = string
}

variable "ad_number" {
  description = "(Optional) The availability domain number of the instance. If none is provided, it will start with AD-1 and continue in round-robin."
  type        = number
  default     = null
}

# variable "fd_number" {
#   // for future use, adding fault domain support
#   description = "(Optional) (Updatable) The fault domain of the instance."
#   type        = number
#   default     = null
# }

variable "instance_display_name" {
  description = "(Optional) (Updatable) A user-friendly name for the instance. Does not have to be unique, and it's changeable."
  type        = string
  default     = ""
}

variable "extended_metadata" {
  description = "(Optional) (Updatable) Additional metadata key/value pairs that you provide."
  type        = map(any)
  default     = {}
}

variable "ipxe_script" {
  description = "(Optional) The iPXE script which to continue the boot process on the instance."
  type        = string
  default     = null
}

variable "preserve_boot_volume" {
  description = "Specifies whether to delete or preserve the boot volume when terminating an instance."
  type        = bool
  default     = false
}

variable "boot_volume_size_in_gbs" {
  description = "The size of the boot volume in GBs."
  type        = number
  default     = null
}

variable "shape" {
  description = "The shape of an instance."
  type        = string
  default     = "VM.Standard2.1"
}

variable "assign_public_ip" {
  description = "Whether the VNIC should be assigned a public IP address."
  type        = bool
  default     = false
}

variable "vnic_name" {
  description = "A user-friendly name for the VNIC."
  type        = string
  default     = ""
}

variable "hostname_label" {
  description = "The hostname for the VNIC's primary private IP."
  type        = string
  default     = ""
}

variable "private_ips" {
  description = "Private IP addresses of your choice to assign to the VNICs."
  type        = list(string)
  default     = []
}

variable "skip_source_dest_check" {
  description = "Whether the source/destination check is disabled on the VNIC."
  type        = bool
  default     = false
}

variable "subnet_ocids" {
  description = "The unique identifiers (OCIDs) of the subnets in which the instance primary VNICs are created."
  type        = list(string)
}

variable "ssh_authorized_keys" {
  description = "Public SSH keys path to be included in the ~/.ssh/authorized_keys file for the default user on the instance."
  type        = string
}

variable "user_data" {
  description = "Provide your own base64-encoded data to be used by Cloud-Init to run custom scripts or provide custom Cloud-Init configuration."
  type        = string
  default     = null
}

variable "source_ocid" {
  description = "The OCID of an image or a boot volume to use, depending on the value of source_type."
  type        = string
}

variable "source_type" {
  description = "The source type for the instance."
  type        = string
  default     = "image"
}

variable "instance_timeout" {
  description = "Timeout setting for creating instance."
  type        = string
  default     = "25m"
}

variable "instance_count" {
  description = "Number of instances to launch."
  type        = number
  default     = 1
}

variable "block_storage_sizes_in_gbs" {
  description = "Sizes of volumes to create and attach to each instance."
  type        = list(number)
  default     = []
}

# variable "block_storage_enable_autotune" {
#   // for future use, adding block volume performance auto-tune
#   description = "(Optional) (Updatable) Specifies whether the auto-tune performance is enabled for this volume."
#   type        = bool
#   default     = true
# }

variable "attachment_type" {
  description = "(Optional) The type of volume. The only supported values are iscsi and paravirtualized."
  type        = string
  default     = "paravirtualized"
}

variable "use_chap" {
  description = "(Applicable when attachment_type=iscsi) Whether to use CHAP authentication for the volume attachment."
  type        = bool
  default     = false
}

variable "resource_platform" {
  description = "Platform to create resources in."
  type        = string
  default     = "linux"
}
