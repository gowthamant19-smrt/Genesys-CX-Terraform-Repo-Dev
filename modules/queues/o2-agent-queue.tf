resource "genesyscloud_routing_queue" "O2-Agent-Queue" {
  enable_manual_assignment = false
  scoring_method           = "TimestampAndPriority"
  media_settings_call {
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
  }
  media_settings_chat {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
  media_settings_message {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
  }
  division_id             = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  enable_audio_monitoring = false
  skill_evaluation_method = "ALL"
  acw_wrapup_prompt       = "OPTIONAL"
  auto_answer_only        = false
  members {
    ring_num = 1
    user_id  = "b7be7b6f-3e2a-4690-b52d-c74335672cb2"
  }
  members {
    ring_num = 1
    user_id  = "cfccd2da-0de4-4e74-bbf9-9f1e42417921"
  }
  media_settings_callback {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    auto_dial_delay_seconds   = 300
    mode                      = "AgentFirst"
    auto_end_delay_seconds    = 300
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  media_settings_email {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
  }
  name                             = "O2-Agent-Queue"
  enable_transcription             = false
  last_agent_routing_mode          = "AnyAgent"
  suppress_in_queue_call_recording = true
}
