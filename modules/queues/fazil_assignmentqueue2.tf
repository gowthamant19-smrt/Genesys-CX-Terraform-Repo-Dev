resource "genesyscloud_routing_queue" "Fazil_AssignmentQueue2" {
  last_agent_routing_mode = "AnyAgent"
  media_settings_callback {
    enable_auto_answer        = false
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    enable_auto_dial_and_end  = false
    mode                      = "AgentFirst"
  }
  name              = "Fazil_AssignmentQueue2"
  acw_wrapup_prompt = "OPTIONAL"
  media_settings_chat {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
  auto_answer_only        = false
  enable_audio_monitoring = false
  media_settings_call {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
  }
  scoring_method                   = "TimestampAndPriority"
  enable_manual_assignment         = false
  enable_transcription             = false
  skill_evaluation_method          = "ALL"
  division_id                      = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  suppress_in_queue_call_recording = true
  media_settings_email {
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
  }
  media_settings_message {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
  }
}
