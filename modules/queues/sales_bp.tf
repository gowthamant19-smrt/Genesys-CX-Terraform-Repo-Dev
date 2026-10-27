resource "genesyscloud_routing_queue" "Sales_BP" {
  suppress_in_queue_call_recording = true
  calling_party_name               = "Sales"
  division_id                      = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  media_settings_email {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
  }
  auto_answer_only        = false
  last_agent_routing_mode = "AnyAgent"
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
    user_id  = "0cb0be88-b9fa-4794-a6a7-7e96df304cc0"
  }
  members {
    ring_num = 1
    user_id  = "e3d96a18-92e7-447c-b249-9caa25e61cfd"
  }
  skill_evaluation_method = "ALL"
  media_settings_call {
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.5
    alerting_timeout_sec      = 8
  }
  name                    = "Sales BP"
  scoring_method          = "TimestampAndPriority"
  peer_id                 = "Sales BP"
  enable_audio_monitoring = false
  media_settings_callback {
    service_level_percentage  = 0.8
    auto_end_delay_seconds    = 300
    mode                      = "AgentFirst"
    enable_auto_answer        = false
    enable_auto_dial_and_end  = false
    service_level_duration_ms = 20000
    alerting_timeout_sec      = 30
    auto_dial_delay_seconds   = 300
  }
  media_settings_chat {
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
  acw_wrapup_prompt        = "OPTIONAL"
  enable_manual_assignment = false
  enable_transcription     = false
  media_settings_message {
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
}
