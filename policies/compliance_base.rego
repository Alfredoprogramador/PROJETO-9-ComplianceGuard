package complianceguard.base

default allow = false

allowed_controls := {
  "consent_management",
  "dsar",
  "data_discovery",
  "audit_reporting",
}

allow {
  requested := input.requested_control
  allowed_controls[requested]
}
