resource "genesyscloud_routing_queue" "ACD_Queue1" {
  last_agent_routing_mode          = "AnyAgent"
  suppress_in_queue_call_recording = true
  acw_wrapup_prompt                = "MANDATORY_TIMEOUT"
  enable_audio_monitoring          = false
  enable_manual_assignment         = false
  media_settings_email {
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
  }
  scoring_method   = "TimestampAndPriority"
  auto_answer_only = false
  division_id      = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  acw_timeout_ms   = 10000
  media_settings_callback {
    auto_dial_delay_seconds   = 300
    auto_end_delay_seconds    = 300
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_dial_and_end  = false
    mode                      = "AgentFirst"
    enable_auto_answer        = false
  }
  media_settings_chat {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    service_level_duration_ms = 20000
  }
  skill_evaluation_method = "ALL"
  enable_transcription    = false
  media_settings_call {
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
  }
  media_settings_message {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
  }
  name = "ACD_Queue1"
  members {
    ring_num = 1
    user_id  = "eb39e9ed-ba51-49e3-bf9e-b2269ddc2ceb"
  }
  members {
    ring_num = 1
    user_id  = "94ee083f-61e9-4f44-b479-e076299c3868"
  }
  members {
    ring_num = 1
    user_id  = "68d2f0d8-f100-4edd-a4db-b5b9af3d2e70"
  }
  members {
    user_id  = "fa8fcbeb-2330-451c-b385-31eb5ddc38ee"
    ring_num = 1
  }
  members {
    ring_num = 1
    user_id  = "f569373a-a053-4579-9da7-fe44d676454f"
  }
  members {
    user_id  = "6fc3c2a0-11ac-48bc-8446-0f17e5f3183e"
    ring_num = 1
  }
  members {
    ring_num = 1
    user_id  = "a6d700b1-c5a5-4de8-a9e5-34c08c6461a9"
  }
}
