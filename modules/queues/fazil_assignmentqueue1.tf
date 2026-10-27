resource "genesyscloud_routing_queue" "Fazil_AssignmentQueue1" {
  name                    = "Fazil_AssignmentQueue1"
  last_agent_routing_mode = "AnyAgent"
  scoring_method          = "TimestampAndPriority"
  acw_wrapup_prompt       = "OPTIONAL"
  enable_audio_monitoring = false
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  auto_answer_only         = false
  enable_manual_assignment = false
  media_settings_callback {
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
    mode                      = "AgentFirst"
    alerting_timeout_sec      = 30
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    enable_auto_answer        = false
  }
  skill_evaluation_method = "ALL"
  enable_transcription    = false
  media_settings_message {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
  }
  suppress_in_queue_call_recording = true
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
  division_id = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
}
