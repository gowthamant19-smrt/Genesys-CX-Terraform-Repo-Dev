resource "genesyscloud_routing_queue" "loan" {
  media_settings_message {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
  }
  skill_evaluation_method          = "ALL"
  suppress_in_queue_call_recording = true
  last_agent_routing_mode          = "AnyAgent"
  enable_audio_monitoring          = false
  name                             = "loan"
  division_id                      = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  media_settings_call {
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  media_settings_chat {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  acw_wrapup_prompt        = "OPTIONAL"
  enable_manual_assignment = false
  media_settings_email {
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
  }
  members {
    ring_num = 1
    user_id  = "3fee7290-1b11-47b7-802a-e02d1577fd0f"
  }
  members {
    ring_num = 1
    user_id  = "bd77b1f6-c91a-4f0a-bd7d-c448a60714eb"
  }
  scoring_method = "TimestampAndPriority"
  media_settings_callback {
    mode                      = "AgentFirst"
    service_level_percentage  = 0.8
    auto_dial_delay_seconds   = 300
    enable_auto_dial_and_end  = false
    alerting_timeout_sec      = 30
    auto_end_delay_seconds    = 300
    service_level_duration_ms = 20000
    enable_auto_answer        = false
  }
  auto_answer_only     = false
  enable_transcription = false
}
