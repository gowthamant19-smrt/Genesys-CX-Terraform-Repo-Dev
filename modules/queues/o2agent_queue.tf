resource "genesyscloud_routing_queue" "O2Agent_Queue" {
  enable_audio_monitoring  = false
  last_agent_routing_mode  = "AnyAgent"
  name                     = "O2Agent Queue"
  skill_evaluation_method  = "ALL"
  enable_manual_assignment = false
  enable_transcription     = false
  media_settings_callback {
    alerting_timeout_sec      = 30
    service_level_percentage  = 0.8
    enable_auto_dial_and_end  = false
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    auto_dial_delay_seconds   = 300
    mode                      = "AgentFirst"
  }
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  auto_answer_only = false
  media_settings_call {
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
  }
  suppress_in_queue_call_recording = true
  acw_wrapup_prompt                = "OPTIONAL"
  media_settings_chat {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  division_id    = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  scoring_method = "TimestampAndPriority"
  media_settings_message {
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
}
