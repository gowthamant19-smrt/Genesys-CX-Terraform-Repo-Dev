resource "genesyscloud_routing_queue" "BusyPing" {
  division_id             = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  last_agent_routing_mode = "AnyAgent"
  media_settings_chat {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
  enable_manual_assignment = false
  media_settings_email {
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
  }
  media_settings_message {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
  }
  auto_answer_only     = false
  enable_transcription = false
  members {
    ring_num = 1
    user_id  = "f5ffd40a-9448-4ba7-878f-1e6eeab72a71"
  }
  members {
    user_id  = "3fee7290-1b11-47b7-802a-e02d1577fd0f"
    ring_num = 1
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
    ring_num = 1
    user_id  = "96faeaf9-ee56-4628-a547-64cfbcb1bdde"
  }
  scoring_method                   = "TimestampAndPriority"
  skill_evaluation_method          = "ALL"
  suppress_in_queue_call_recording = true
  enable_audio_monitoring          = false
  media_settings_call {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
  }
  media_settings_callback {
    auto_end_delay_seconds    = 300
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    auto_dial_delay_seconds   = 300
    enable_auto_dial_and_end  = false
    enable_auto_answer        = false
    mode                      = "AgentFirst"
    alerting_timeout_sec      = 30
  }
  description       = "Broadband"
  acw_wrapup_prompt = "OPTIONAL"
  name              = "BusyPing"
}
