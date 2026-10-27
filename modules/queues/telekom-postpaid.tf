resource "genesyscloud_routing_queue" "Telekom-Postpaid" {
  enable_audio_monitoring = false
  enable_transcription    = false
  media_settings_message {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
  }
  members {
    ring_num = 1
    user_id  = "f5ffd40a-9448-4ba7-878f-1e6eeab72a71"
  }
  members {
    ring_num = 1
    user_id  = "3fee7290-1b11-47b7-802a-e02d1577fd0f"
  }
  members {
    ring_num = 1
    user_id  = "e65158ea-1317-4acb-bcb7-ed3d58977494"
  }
  members {
    ring_num = 1
    user_id  = "0cb0be88-b9fa-4794-a6a7-7e96df304cc0"
  }
  members {
    user_id  = "96faeaf9-ee56-4628-a547-64cfbcb1bdde"
    ring_num = 1
  }
  peer_id = "502"
  media_settings_chat {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  acw_wrapup_prompt                = "OPTIONAL"
  enable_manual_assignment         = false
  description                      = "Broadband"
  name                             = "Telekom-Postpaid"
  skill_evaluation_method          = "ALL"
  suppress_in_queue_call_recording = true
  media_settings_callback {
    service_level_percentage  = 0.8
    auto_end_delay_seconds    = 300
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    service_level_duration_ms = 20000
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    mode                      = "AgentFirst"
  }
  scoring_method = "TimestampAndPriority"
  media_settings_call {
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  auto_answer_only        = false
  division_id             = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  last_agent_routing_mode = "AnyAgent"
  media_settings_email {
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
  }
}
