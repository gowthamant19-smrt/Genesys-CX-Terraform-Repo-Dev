resource "genesyscloud_routing_queue" "MK_Queue_01" {
  media_settings_message {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  enable_audio_monitoring = false
  media_settings_callback {
    mode                      = "AgentFirst"
    enable_auto_answer        = false
    service_level_percentage  = 0.8
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
  }
  enable_manual_assignment         = false
  suppress_in_queue_call_recording = true
  media_settings_call {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
  }
  media_settings_email {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
  }
  skill_evaluation_method = "ALL"
  enable_transcription    = false
  last_agent_routing_mode = "AnyAgent"
  media_settings_chat {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
  }
  name              = "MK_Queue_01"
  auto_answer_only  = false
  wrapup_codes      = ["20466c72-74f3-44b0-a92c-ab1aae92da2d", "0bc17e67-1ae5-454e-a877-610b836b4adb"]
  division_id       = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  scoring_method    = "TimestampAndPriority"
  acw_wrapup_prompt = "OPTIONAL"
  canned_response_libraries {
    library_ids = ["9844de8d-e7b0-4f3e-bae6-3395be715355"]
    mode        = "SelectedOnly"
  }
  direct_routing {
    agent_wait_seconds                 = 60
    call_use_agent_address_outbound    = false
    email_use_agent_address_outbound   = false
    message_use_agent_address_outbound = false
    wait_for_agent                     = true
  }
}
