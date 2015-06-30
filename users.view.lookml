- view: users
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: admin
    type: yesno
    sql: ${TABLE}.admin

  - dimension: approved
    type: yesno
    sql: ${TABLE}.approved

  - dimension_group: approved
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.approved_at

  - dimension: approved_by_id
    type: int
    sql: ${TABLE}.approved_by_id

  - dimension: auth_token
    sql: ${TABLE}.auth_token

  - dimension: auto_track_topics_after_msecs
    type: int
    sql: ${TABLE}.auto_track_topics_after_msecs

  - dimension: blocked
    type: yesno
    sql: ${TABLE}.blocked

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: date_of_birth
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.date_of_birth

  - dimension: digest_after_days
    type: int
    sql: ${TABLE}.digest_after_days

  - dimension: disable_jump_reply
    type: yesno
    sql: ${TABLE}.disable_jump_reply

  - dimension: dynamic_favicon
    type: yesno
    sql: ${TABLE}.dynamic_favicon

  - dimension: edit_history_public
    type: yesno
    sql: ${TABLE}.edit_history_public

  - dimension: email
    sql: ${TABLE}.email

  - dimension: email_always
    type: yesno
    sql: ${TABLE}.email_always

  - dimension: email_digests
    type: yesno
    sql: ${TABLE}.email_digests

  - dimension: email_direct
    type: yesno
    sql: ${TABLE}.email_direct

  - dimension: email_private_messages
    type: yesno
    sql: ${TABLE}.email_private_messages

  - dimension: enable_quoting
    type: yesno
    sql: ${TABLE}.enable_quoting

  - dimension: external_links_in_new_tab
    type: yesno
    sql: ${TABLE}.external_links_in_new_tab

  - dimension: flag_level
    type: int
    sql: ${TABLE}.flag_level

  - dimension: ip_address
    sql: ${TABLE}.ip_address

  - dimension_group: last_emailed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_emailed_at

  - dimension_group: last_posted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_posted_at

  - dimension_group: last_redirected_to_top
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_redirected_to_top_at

  - dimension_group: last_seen
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_seen_at

  - dimension: locale
    sql: ${TABLE}.locale

  - dimension: mailing_list_mode
    type: yesno
    sql: ${TABLE}.mailing_list_mode

  - dimension: moderator
    type: yesno
    sql: ${TABLE}.moderator

  - dimension: name
    sql: ${TABLE}.name

  - dimension: new_topic_duration_minutes
    type: int
    sql: ${TABLE}.new_topic_duration_minutes

  - dimension: password_hash
    sql: ${TABLE}.password_hash

  - dimension_group: previous_visit
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.previous_visit_at

  - dimension: primary_group_id
    type: int
    sql: ${TABLE}.primary_group_id

  - dimension: registration_ip_address
    sql: ${TABLE}.registration_ip_address

  - dimension: salt
    sql: ${TABLE}.salt

  - dimension: seen_notification_id
    type: int
    sql: ${TABLE}.seen_notification_id

  - dimension_group: suspended
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.suspended_at

  - dimension_group: suspended_till
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.suspended_till

  - dimension: title
    sql: ${TABLE}.title

  - dimension: trust_level
    type: int
    sql: ${TABLE}.trust_level

  - dimension: trust_level_locked
    type: yesno
    sql: ${TABLE}.trust_level_locked

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: uploaded_avatar_id
    type: int
    sql: ${TABLE}.uploaded_avatar_id

  - dimension: username
    sql: ${TABLE}.username

  - dimension: username_lower
    sql: ${TABLE}.username_lower

  - dimension: views
    type: int
    sql: ${TABLE}.views

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - username
    - api_keys.count
    - badge_posts.count
    - categories.count
    - category_featured_users.count
    - category_users.count
    - drafts.count
    - draft_sequences.count
    - email_logs.count
    - email_tokens.count
    - facebook_user_infos.count
    - github_user_infos.count
    - google_user_infos.count
    - group_users.count
    - incoming_links.count
    - invites.count
    - notifications.count
    - oauth2_user_infos.count
    - post_actions.count
    - post_revisions.count
    - posts.count
    - post_timings.count
    - single_sign_on_records.count
    - site_customizations.count
    - topic_allowed_users.count
    - topic_link_clicks.count
    - topic_links.count
    - topics.count
    - topic_users.count
    - topic_views.count
    - twitter_user_infos.count
    - uploads.count
    - user_actions.count
    - user_avatars.count
    - user_badges.count
    - user_custom_fields.count
    - user_exports.count
    - user_open_ids.count
    - user_profiles.count
    - user_search_data.count
    - user_stats.count
    - user_visits.count
    - versions.count
    - warnings.count

