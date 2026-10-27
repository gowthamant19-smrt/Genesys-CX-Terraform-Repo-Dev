resource "genesyscloud_routing_queue" "callbackQueue" {
  wrapup_codes                     = ["b26f9dc2-62c5-48a6-a92a-19cbed7eb027", "9ff9f5e3-1724-4e15-976e-8e3bf6e76c2a", "cb5d9183-9eb0-45ee-909b-de88fe418f22", "375d1195-4e0f-4b1b-ab03-b3d7e507deae", "865d13bb-a7ce-4f5a-aa2f-d4252922ca53", "84a6e6a1-26b3-497b-9995-cf7a8ee0b2c7", "7de041cc-3369-4c79-94ff-93ec75250677", "6de58632-1654-40f8-87a2-ccec4deff7bd", "97e83e96-c6bc-43b9-96b5-4e28d2dcbc55", "634f17fb-90a9-4f27-a96c-3d0efae70cd5", "5fb13e88-a2de-4140-adb4-6f854c52f71d", "4c49098c-e08c-44b5-bd52-639466f6ccd7"]
  auto_answer_only                 = false
  suppress_in_queue_call_recording = true
  media_settings_call {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
  }
  enable_transcription = true
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  enable_manual_assignment = false
  last_agent_routing_mode  = "AnyAgent"
  media_settings_chat {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  acw_wrapup_prompt = "OPTIONAL"
  agent_owned_routing {
    enable_agent_owned_callbacks   = false
    max_owned_callback_delay_hours = 2
    max_owned_callback_hours       = 2
  }
  division_id             = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  enable_audio_monitoring = false
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
    user_id  = "f5ffd40a-9448-4ba7-878f-1e6eeab72a71"
  }
  members {
    ring_num = 1
    user_id  = "e65158ea-1317-4acb-bcb7-ed3d58977494"
  }
  members {
    ring_num = 1
    user_id  = "32c1bcd1-f2ca-4893-bb13-b56be90b4186"
  }
  members {
    ring_num = 1
    user_id  = "e46b295f-51a3-451a-bb36-962f1fd66002"
  }
  scoring_method = "TimestampAndPriority"
  media_settings_message {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  name                    = "callbackQueue"
  skill_evaluation_method = "ALL"
  media_settings_callback {
    auto_end_delay_seconds    = 300
    service_level_duration_ms = 20000
    enable_auto_dial_and_end  = false
    service_level_percentage  = 0.8
    mode                      = "AgentFirst"
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    auto_dial_delay_seconds   = 300
  }
}
