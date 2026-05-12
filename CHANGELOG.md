# v1.0.0 - <date>

## [v2.0.0] - 2026-05-11

### Breaking changes

* Upgraded to `azurerm` provider `~> 4.20`. Consumers must set `ARM_SUBSCRIPTION_ID` (azurerm 4.x makes `subscription_id` required for the `azurerm` provider).
* Raised Terraform CLI floor from `>= 1.9` to `>= 1.10`.
* Added `azure/azapi ~> 2.0` to `required_providers` for fleet alignment.
* `examples/Government/basic_workload_spoke/versions.tf`: removed `skip_provider_registration = true` from the `provider "azurerm"` block (argument removed in 4.x; replaced by `resource_provider_registrations`, which defaults appropriately).
* `azurerm_route_table.disable_bgp_route_propagation` renamed to `bgp_route_propagation_enabled` and its semantics inverted (4.x). The module variable `var.disable_bgp_route_propagation` is preserved for backward compatibility — the inversion happens at the resource boundary.
* `azurerm_subnet.private_endpoint_network_policies_enabled` (bool) was replaced by `private_endpoint_network_policies` (string enum) in 4.x. The module variable map key `private_endpoint_network_policies_enabled` retains its `bool` type for backward compatibility; values are translated to `"Enabled"` / `"Disabled"` at the resource boundary.

### Notes

* `azurerm_network_watcher_flow_log.retention_policy` block is **still valid in 4.x** (not removed) — kept as-is.
* `popsrox` local provider name retained.
* `configuration_aliases = [azurerm.hub_network]` preserved on the root `azurerm` provider declaration.


Added
- Add Something you added
