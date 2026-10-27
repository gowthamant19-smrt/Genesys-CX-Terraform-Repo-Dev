resource "genesyscloud_routing_queue" "Selva_Test_Queue" {
  enable_manual_assignment = false
  enable_transcription     = false
  scoring_method           = "TimestampAndPriority"
  enable_audio_monitoring  = false
  media_settings_message {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
  }
  auto_answer_only = false
  media_settings_chat {
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
  name                             = "Selva Test Queue"
  skill_evaluation_method          = "ALL"
  suppress_in_queue_call_recording = true
  division_id                      = "2c1b69bc-24b4-40b8-8ed1-48212715b45b"
  media_settings_call {
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  members {
    ring_num = 1
    user_id  = "366f60fd-6da3-4806-9583-520b8d92eaf6"
  }
  media_settings_callback {
    alerting_timeout_sec      = 30
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
    service_level_percentage  = 0.8
    mode                      = "AgentFirst"
    service_level_duration_ms = 20000
    auto_dial_delay_seconds   = 300
    enable_auto_dial_and_end  = false
  }
  wrapup_codes            = ["8114aed8-3c45-4312-b2ab-861103400aa0", "cde9e6a0-4355-415a-b044-083ce455e426"]
  last_agent_routing_mode = "AnyAgent"
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  acw_wrapup_prompt = "OPTIONAL"
}
