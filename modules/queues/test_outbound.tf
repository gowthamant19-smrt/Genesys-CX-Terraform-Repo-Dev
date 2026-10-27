resource "genesyscloud_routing_queue" "Test_Outbound" {
  enable_transcription = false
  media_settings_chat {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  auto_answer_only        = false
  last_agent_routing_mode = "AnyAgent"
  members {
    ring_num = 1
    user_id  = "366f60fd-6da3-4806-9583-520b8d92eaf6"
  }
  enable_manual_assignment = false
  media_settings_call {
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  media_settings_callback {
    auto_dial_delay_seconds   = 300
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
    mode                      = "AgentFirst"
    alerting_timeout_sec      = 30
  }
  name                             = "Test_Outbound"
  division_id                      = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  skill_evaluation_method          = "ALL"
  suppress_in_queue_call_recording = true
  acw_wrapup_prompt                = "OPTIONAL"
  enable_audio_monitoring          = false
  media_settings_message {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
  }
  scoring_method = "TimestampAndPriority"
}
