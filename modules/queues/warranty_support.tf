resource "genesyscloud_routing_queue" "Warranty_Support" {
  members {
    ring_num = 1
    user_id  = "eb39e9ed-ba51-49e3-bf9e-b2269ddc2ceb"
  }
  members {
    ring_num = 1
    user_id  = "13f6a128-b542-44ba-b7ee-8b6fa35dab6b"
  }
  members {
    ring_num = 1
    user_id  = "8c9cc825-3113-42d9-b3e2-daea5f8f45e0"
  }
  name                     = "Warranty Support"
  enable_manual_assignment = false
  media_settings_callback {
    service_level_duration_ms = 20000
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
    mode                      = "AgentFirst"
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    enable_auto_dial_and_end  = false
  }
  media_settings_chat {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
  scoring_method          = "TimestampAndPriority"
  last_agent_routing_mode = "AnyAgent"
  media_settings_email {
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
  }
  auto_answer_only        = false
  enable_audio_monitoring = false
  media_settings_call {
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  enable_transcription             = false
  skill_evaluation_method          = "ALL"
  suppress_in_queue_call_recording = true
  acw_wrapup_prompt                = "OPTIONAL"
  media_settings_message {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
  }
  division_id = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
}
