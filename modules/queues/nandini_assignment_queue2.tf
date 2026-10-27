resource "genesyscloud_routing_queue" "Nandini_Assignment_Queue2" {
  auto_answer_only        = false
  enable_audio_monitoring = false
  last_agent_routing_mode = "AnyAgent"
  media_settings_call {
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  scoring_method = "TimestampAndPriority"
  division_id    = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  media_settings_email {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
  }
  suppress_in_queue_call_recording = true
  media_settings_message {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  media_settings_chat {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
  enable_transcription = false
  media_settings_callback {
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    enable_auto_dial_and_end  = false
    service_level_percentage  = 0.8
    mode                      = "AgentFirst"
  }
  acw_wrapup_prompt        = "OPTIONAL"
  enable_manual_assignment = false
  name                     = "Nandini_Assignment_Queue2"
  skill_evaluation_method  = "ALL"
}
