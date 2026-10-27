resource "genesyscloud_routing_queue" "HCInboundQ" {
  enable_manual_assignment = false
  last_agent_routing_mode  = "AnyAgent"
  media_settings_email {
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
  }
  auto_answer_only = false
  division_id      = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  media_settings_callback {
    auto_end_delay_seconds    = 300
    mode                      = "AgentFirst"
    service_level_duration_ms = 20000
    auto_dial_delay_seconds   = 300
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    alerting_timeout_sec      = 30
    service_level_percentage  = 0.8
  }
  name                    = "HCInboundQ"
  enable_audio_monitoring = false
  media_settings_call {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
  }
  media_settings_chat {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  scoring_method          = "TimestampAndPriority"
  skill_evaluation_method = "ALL"
  acw_wrapup_prompt       = "OPTIONAL"
  media_settings_message {
    sub_type_settings {
      enable_auto_answer        = true
      enable_inactivity_timeout = false
      media_type                = "apple"
    }
    sub_type_settings {
      enable_auto_answer        = true
      enable_inactivity_timeout = false
      media_type                = "facebook"
    }
    sub_type_settings {
      enable_auto_answer        = true
      enable_inactivity_timeout = false
      media_type                = "instagram"
    }
    sub_type_settings {
      enable_auto_answer        = true
      enable_inactivity_timeout = false
      media_type                = "open"
    }
    sub_type_settings {
      enable_auto_answer        = true
      enable_inactivity_timeout = false
      media_type                = "sms"
    }
    sub_type_settings {
      media_type                = "twitter"
      enable_auto_answer        = true
      enable_inactivity_timeout = false
    }
    sub_type_settings {
      enable_auto_answer        = true
      enable_inactivity_timeout = false
      media_type                = "webmessaging"
    }
    sub_type_settings {
      enable_auto_answer        = true
      enable_inactivity_timeout = false
      media_type                = "whatsapp"
    }
    alerting_timeout_sec      = 30
    enable_auto_answer        = true
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  suppress_in_queue_call_recording = true
  enable_transcription             = false
  members {
    ring_num = 1
    user_id  = "bd77b1f6-c91a-4f0a-bd7d-c448a60714eb"
  }
}
