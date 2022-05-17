# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "sandbox_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "demoaft22@gmail.com"
    AccountName  = "demoaft22"
    # Syntax for top-level OU
    # ManagedOrganizationalUnit = "sandbox"
    # Syntax for nested OU
    ManagedOrganizationalUnit = "sandbox (ou-w51q-cald7awo)"
    SSOUserEmail              = "demoaft22@gmail.com"
    SSOUserFirstName          = "AFT"
    SSOUserLastName           = "Demo"
  }

  account_tags = {
  }

  change_management_parameters = {
    change_requested_by = "Sameer Thakur"
    change_reason       = "Testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "sandbox-customization"
}