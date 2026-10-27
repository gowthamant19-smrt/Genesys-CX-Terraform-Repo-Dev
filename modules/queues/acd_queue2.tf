resource "genesyscloud_routing_queue" "ACD_Queue2" {
  enable_audio_monitoring  = false
  enable_manual_assignment = false
  scoring_method           = "TimestampAndPriority"
  skill_evaluation_method  = "ALL"
  acw_wrapup_prompt        = "OPTIONAL"
  media_settings_call {
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  media_settings_message {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  members {
    ring_num = 1
    user_id  = "6fc3c2a0-11ac-48bc-8446-0f17e5f3183e"
  }
  auto_answer_only                 = false
  division_id                      = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  name                             = "ACD_Queue2"
  suppress_in_queue_call_recording = true
  media_settings_chat {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    service_level_duration_ms = 20000
  }
  last_agent_routing_mode = "AnyAgent"
  media_settings_callback {
    mode                      = "AgentFirst"
    alerting_timeout_sec      = 30
    auto_end_delay_seconds    = 300
    enable_auto_dial_and_end  = false
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    auto_dial_delay_seconds   = 300
  }
  enable_transcription = false
}
