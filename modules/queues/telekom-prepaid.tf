resource "genesyscloud_routing_queue" "Telekom-Prepaid" {
  acw_wrapup_prompt = "OPTIONAL"
  division_id       = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  media_settings_message {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  enable_audio_monitoring = false
  media_settings_callback {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    auto_dial_delay_seconds   = 300
    enable_auto_dial_and_end  = false
    mode                      = "AgentFirst"
    auto_end_delay_seconds    = 300
  }
  media_settings_email {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
  }
  name                             = "Telekom-Prepaid"
  suppress_in_queue_call_recording = true
  auto_answer_only                 = false
  description                      = "Broadband"
  peer_id                          = "501"
  scoring_method                   = "TimestampAndPriority"
  enable_manual_assignment         = false
  enable_transcription             = false
  media_settings_call {
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  media_settings_chat {
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
  last_agent_routing_mode = "AnyAgent"
  skill_evaluation_method = "ALL"
  members {
    ring_num = 1
    user_id  = "f5ffd40a-9448-4ba7-878f-1e6eeab72a71"
  }
  members {
    ring_num = 1
    user_id  = "3fee7290-1b11-47b7-802a-e02d1577fd0f"
  }
  members {
    user_id  = "e65158ea-1317-4acb-bcb7-ed3d58977494"
    ring_num = 1
  }
  members {
    ring_num = 1
    user_id  = "0cb0be88-b9fa-4794-a6a7-7e96df304cc0"
  }
  members {
    ring_num = 1
    user_id  = "96faeaf9-ee56-4628-a547-64cfbcb1bdde"
  }
}
