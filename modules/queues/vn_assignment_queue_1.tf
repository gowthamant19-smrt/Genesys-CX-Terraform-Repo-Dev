resource "genesyscloud_routing_queue" "VN_Assignment_queue_1" {
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
  media_settings_message {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  division_id = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  media_settings_email {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
  }
  enable_manual_assignment = false
  last_agent_routing_mode  = "AnyAgent"
  media_settings_callback {
    auto_dial_delay_seconds   = 300
    enable_auto_dial_and_end  = false
    mode                      = "AgentFirst"
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    auto_end_delay_seconds    = 300
  }
  name                             = "VN_Assignment_queue_1"
  scoring_method                   = "TimestampAndPriority"
  skill_evaluation_method          = "ALL"
  acw_wrapup_prompt                = "OPTIONAL"
  suppress_in_queue_call_recording = true
  enable_transcription             = false
  members {
    ring_num = 1
    user_id  = "3fee7290-1b11-47b7-802a-e02d1577fd0f"
  }
  members {
    user_id  = "68d2f0d8-f100-4edd-a4db-b5b9af3d2e70"
    ring_num = 1
  }
  members {
    user_id  = "bd77b1f6-c91a-4f0a-bd7d-c448a60714eb"
    ring_num = 1
  }
}
