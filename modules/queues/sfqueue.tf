resource "genesyscloud_routing_queue" "SFQueue" {
  enable_audio_monitoring = false
  name                    = "SFQueue"
  auto_answer_only        = false
  last_agent_routing_mode = "AnyAgent"
  media_settings_chat {
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
  media_settings_message {
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
  acw_wrapup_prompt        = "OPTIONAL"
  skill_evaluation_method  = "ALL"
  division_id              = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  enable_manual_assignment = false
  enable_transcription     = false
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  suppress_in_queue_call_recording = true
  media_settings_call {
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  media_settings_callback {
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
    mode                      = "AgentFirst"
    service_level_duration_ms = 20000
    alerting_timeout_sec      = 30
    enable_auto_dial_and_end  = false
    enable_auto_answer        = false
    service_level_percentage  = 0.8
  }
  members {
    ring_num = 1
    user_id  = "f5ffd40a-9448-4ba7-878f-1e6eeab72a71"
  }
  members {
    ring_num = 1
    user_id  = "e65158ea-1317-4acb-bcb7-ed3d58977494"
  }
  scoring_method = "TimestampAndPriority"
}
