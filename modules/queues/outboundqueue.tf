resource "genesyscloud_routing_queue" "outboundQueue" {
  media_settings_message {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    sub_type_settings {
      enable_auto_answer        = false
      enable_inactivity_timeout = false
      media_type                = "facebook"
    }
    sub_type_settings {
      enable_auto_answer        = false
      enable_inactivity_timeout = false
      media_type                = "instagram"
    }
    sub_type_settings {
      enable_inactivity_timeout = false
      media_type                = "open"
      enable_auto_answer        = false
    }
    sub_type_settings {
      enable_auto_answer        = false
      enable_inactivity_timeout = false
      media_type                = "sms"
    }
    sub_type_settings {
      enable_auto_answer        = false
      enable_inactivity_timeout = false
      media_type                = "twitter"
    }
    sub_type_settings {
      enable_auto_answer        = false
      enable_inactivity_timeout = false
      media_type                = "webmessaging"
    }
    sub_type_settings {
      enable_auto_answer        = false
      enable_inactivity_timeout = false
      media_type                = "whatsapp"
    }
  }
  media_settings_chat {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  name                    = "outboundQueue"
  acw_wrapup_prompt       = "OPTIONAL"
  division_id             = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  enable_audio_monitoring = false
  last_agent_routing_mode = "AnyAgent"
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  skill_evaluation_method = "ALL"
  enable_transcription    = false
  media_settings_callback {
    auto_dial_delay_seconds   = 300
    mode                      = "AgentFirst"
    service_level_percentage  = 0.8
    auto_end_delay_seconds    = 300
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
  }
  scoring_method = "TimestampAndPriority"
  members {
    ring_num = 1
    user_id  = "f5ffd40a-9448-4ba7-878f-1e6eeab72a71"
  }
  members {
    ring_num = 1
    user_id  = "e65158ea-1317-4acb-bcb7-ed3d58977494"
  }
  members {
    ring_num = 1
    user_id  = "32c1bcd1-f2ca-4893-bb13-b56be90b4186"
  }
  outbound_messaging_sms_address_id = "+17874828174"
  suppress_in_queue_call_recording  = true
  auto_answer_only                  = false
  enable_manual_assignment          = false
  media_settings_call {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    service_level_duration_ms = 20000
  }
}
