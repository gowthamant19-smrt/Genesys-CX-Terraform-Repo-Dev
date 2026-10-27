resource "genesyscloud_routing_queue" "Emergency_Queue" {
  skill_evaluation_method = "ALL"
  auto_answer_only        = false
  enable_audio_monitoring = false
  name                    = "Emergency_Queue"
  media_settings_message {
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
  division_id          = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  enable_transcription = false
  media_settings_callback {
    mode                      = "AgentFirst"
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
    service_level_percentage  = 0.8
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
  }
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  suppress_in_queue_call_recording = true
  enable_manual_assignment         = false
  acw_wrapup_prompt                = "OPTIONAL"
  media_settings_chat {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
  last_agent_routing_mode = "AnyAgent"
  scoring_method          = "TimestampAndPriority"
  media_settings_call {
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
}
