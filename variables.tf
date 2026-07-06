variable "dedicated_hosts" {
  description = <<EOT
Map of dedicated_hosts, attributes below
Required:
    - dedicated_host_group_id
    - location
    - name
    - platform_fault_domain
    - sku_name
Optional:
    - auto_replace_on_failure
    - license_type
    - tags
EOT

  type = map(object({
    dedicated_host_group_id = string
    location                = string
    name                    = string
    platform_fault_domain   = number
    sku_name                = string
    auto_replace_on_failure = optional(bool)   # Default: true
    license_type            = optional(string) # Default: "None"
    tags                    = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dedicated_hosts : (
        contains(["DADSv5-Type1", "DASv4-Type1", "DASv4-Type2", "DASv5-Type1", "DCSv2-Type1", "DDSv4-Type1", "DDSv4-Type2", "DDSv5-Type1", "DSv3-Type1", "DSv3-Type2", "DSv3-Type3", "DSv3-Type4", "DSv4-Type1", "DSv4-Type2", "DSv5-Type1", "EADSv5-Type1", "EASv4-Type1", "EASv4-Type2", "EASv5-Type1", "EDSv4-Type1", "EDSv4-Type2", "EDSv5-Type1", "ESv3-Type1", "ESv3-Type2", "ESv3-Type3", "ESv3-Type4", "ESv4-Type1", "ESv4-Type2", "ESv5-Type1", "FSv2-Type2", "FSv2-Type3", "FSv2-Type4", "FXmds-Type1", "LSv2-Type1", "LSv3-Type1", "MDMSv2MedMem-Type1", "MDSv2MedMem-Type1", "MMSv2MedMem-Type1", "MS-Type1", "MSm-Type1", "MSmv2-Type1", "MSv2-Type1", "MSv2MedMem-Type1", "NVASv4-Type1", "NVSv3-Type1"], v.sku_name)
      )
    ])
    error_message = "must be one of: DADSv5-Type1, DASv4-Type1, DASv4-Type2, DASv5-Type1, DCSv2-Type1, DDSv4-Type1, DDSv4-Type2, DDSv5-Type1, DSv3-Type1, DSv3-Type2, DSv3-Type3, DSv3-Type4, DSv4-Type1, DSv4-Type2, DSv5-Type1, EADSv5-Type1, EASv4-Type1, EASv4-Type2, EASv5-Type1, EDSv4-Type1, EDSv4-Type2, EDSv5-Type1, ESv3-Type1, ESv3-Type2, ESv3-Type3, ESv3-Type4, ESv4-Type1, ESv4-Type2, ESv5-Type1, FSv2-Type2, FSv2-Type3, FSv2-Type4, FXmds-Type1, LSv2-Type1, LSv3-Type1, MDMSv2MedMem-Type1, MDSv2MedMem-Type1, MMSv2MedMem-Type1, MS-Type1, MSm-Type1, MSmv2-Type1, MSv2-Type1, MSv2MedMem-Type1, NVASv4-Type1, NVSv3-Type1"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_dedicated_host's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.DedicatedHostName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: dedicated_host_group_id
  #   source:    [from commonids.ValidateDedicatedHostGroupID] !ok
  # path: dedicated_host_group_id
  #   source:    [from commonids.ValidateDedicatedHostGroupID] err != nil
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: license_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

