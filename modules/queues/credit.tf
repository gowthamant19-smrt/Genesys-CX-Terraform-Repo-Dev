resource "genesyscloud_routing_queue" "credit" {
  auto_answer_only = false
  media_settings_call {
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  media_settings_chat {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    service_level_duration_ms = 20000
  }
  acw_timeout_ms           = 10000
  acw_wrapup_prompt        = "MANDATORY_TIMEOUT"
  enable_audio_monitoring  = false
  enable_manual_assignment = false
  last_agent_routing_mode  = "Disabled"
  members {
    user_id  = "3fee7290-1b11-47b7-802a-e02d1577fd0f"
    ring_num = 1
  }
  members {
    ring_num = 1
    user_id  = "ca179453-c1d3-4987-9752-bb5b0403197d"
  }
  members {
    user_id  = "fa8fcbeb-2330-451c-b385-31eb5ddc38ee"
    ring_num = 1
  }
  members {
    ring_num = 1
    user_id  = "6fc3c2a0-11ac-48bc-8446-0f17e5f3183e"
  }
  members {
    ring_num = 1
    user_id  = "a6d700b1-c5a5-4de8-a9e5-34c08c6461a9"
  }
  direct_routing {
    agent_wait_seconds                 = 60
    call_use_agent_address_outbound    = false
    email_use_agent_address_outbound   = false
    message_use_agent_address_outbound = false
    wait_for_agent                     = true
  }
  enable_transcription    = false
  name                    = "credit "
  skill_evaluation_method = "NONE"
  media_settings_message {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
  }
  scoring_method                   = "TimestampAndPriority"
  suppress_in_queue_call_recording = true
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  division_id = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  media_settings_callback {
    auto_end_delay_seconds    = 300
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    mode                      = "AgentFirst"
    service_level_percentage  = 0.8
    enable_auto_answer        = false
  }
}
