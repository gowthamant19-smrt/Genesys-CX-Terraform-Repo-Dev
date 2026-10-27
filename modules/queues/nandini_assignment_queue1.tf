resource "genesyscloud_routing_queue" "Nandini_Assignment_Queue1" {
  enable_audio_monitoring = false
  name                    = "Nandini_Assignment_Queue1"
  scoring_method          = "TimestampAndPriority"
  media_settings_call {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
  }
  media_settings_chat {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
  acw_wrapup_prompt        = "OPTIONAL"
  enable_manual_assignment = false
  enable_transcription     = false
  media_settings_callback {
    alerting_timeout_sec      = 30
    auto_end_delay_seconds    = 300
    mode                      = "AgentFirst"
    auto_dial_delay_seconds   = 300
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    enable_auto_dial_and_end  = false
    service_level_percentage  = 0.8
  }
  skill_evaluation_method = "ALL"
  last_agent_routing_mode = "AnyAgent"
  media_settings_email {
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
  }
  media_settings_message {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
  }
  auto_answer_only                 = false
  division_id                      = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  suppress_in_queue_call_recording = true
}
