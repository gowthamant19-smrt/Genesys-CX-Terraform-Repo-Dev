resource "genesyscloud_routing_queue" "testqueuegj" {
  suppress_in_queue_call_recording = true
  media_settings_email {
    alerting_timeout_sec      = 300
    enable_auto_answer        = false
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  enable_transcription    = false
  skill_evaluation_method = "ALL"
  media_settings_call {
    alerting_timeout_sec      = 8
    enable_auto_answer        = false
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  enable_manual_assignment = false
  last_agent_routing_mode  = "AnyAgent"
  media_settings_chat {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    service_level_duration_ms = 20000
  }
  media_settings_message {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    enable_auto_answer        = false
    enable_inactivity_timeout = false
  }
  members {
    ring_num = 1
    user_id  = "${data.genesyscloud_user.sujith_rekhawar_ibm_com.id}"
  }
  name                    = "testqueuegj"
  enable_audio_monitoring = false
  scoring_method          = "TimestampAndPriority"
  wrapup_codes            = ["${data.genesyscloud_routing_wrapupcode.ACW.id}", "${data.genesyscloud_routing_wrapupcode.Meeting.id}"]
  auto_answer_only        = false
  media_settings_callback {
    service_level_percentage  = 0.8
    auto_dial_delay_seconds   = 300
    service_level_duration_ms = 20000
    alerting_timeout_sec      = 30
    enable_auto_dial_and_end  = false
    mode                      = "AgentFirst"
    auto_end_delay_seconds    = 300
    enable_auto_answer        = false
  }
  acw_wrapup_prompt = "OPTIONAL"
  division_id       = "${data.genesyscloud_auth_division_home.Home.id}"
}
