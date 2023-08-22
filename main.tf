resource "snowmirror_synchronization" "sys_rest_message" {
  mirror_table            = "sys_rest_message"
  name                    = "sys_rest_message"
  table                   = "sys_rest_message"
  active                  = true
  allow_inherited_columns = true
  auto_schema_update      = "false"
  columns = [
    {
      name = "sys_id"
    },
    {
      name = "access"
    },
    {
      name = "authentication_type"
    },
    {
      name = "basic_auth_password"
    },
    {
      name = "basic_auth_profile"
    },
  ]
  columns_to_exclude = null
  delete_strategy    = "AUDIT"
  encoded_query      = null
  full_load_scheduler = {
    begin_date     = "2023-08-18"
    execution_type = "CLEAN_AND_SYNCHRONIZE"
    type           = "MANUALLY"
  }
  reference_field_type = "BOTH"
  run_immediately      = null
  scheduler = {
    begin_date = "2023-08-18"
    type       = "MANUALLY"
  }
  scheduler_priority = "NORMAL"
  view               = null
}

resource "snowmirror_synchronization" "sys_user" {
  mirror_table            = "sys_user"
  name                    = "sys_user"
  table                   = "sys_user"
  active                  = true
  allow_inherited_columns = true
  auto_schema_update      = "false"
  columns = [
    {
      name = "sys_id"
    },
    {
      name = "name"
    },
    {
      name = "active"
    },
    {
      name = "country"
    },
  ]
  columns_to_exclude = null
  delete_strategy    = "AUDIT"
  encoded_query      = null
  full_load_scheduler = {
    begin_date     = formatdate("YYYY-MM-DD", timestamp())
    execution_type = "CLEAN_AND_SYNCHRONIZE"
    type           = "MANUALLY"
  }
  reference_field_type = "BOTH"
  run_immediately      = null
  scheduler = {
    begin_date = formatdate("YYYY-MM-DD", timestamp())
    type       = "MANUALLY"
  }
  scheduler_priority = "NORMAL"
  view               = null
}
