- view: user_histories
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: acting_user_id
    type: int
    sql: ${TABLE}.acting_user_id

  - dimension: action
    type: int
    sql: ${TABLE}.action

  - dimension: admin_only
    type: yesno
    sql: ${TABLE}.admin_only

  - dimension: context
    sql: ${TABLE}.context

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: custom_type
    sql: ${TABLE}.custom_type

  - dimension: details
    sql: ${TABLE}.details

  - dimension: email
    sql: ${TABLE}.email

  - dimension: ip_address
    sql: ${TABLE}.ip_address

  - dimension: new_value
    sql: ${TABLE}.new_value

  - dimension: post_id
    type: int
    # hidden: true
    sql: ${TABLE}.post_id

  - dimension: previous_value
    sql: ${TABLE}.previous_value

  - dimension: subject
    sql: ${TABLE}.subject

  - dimension: target_user_id
    type: int
    sql: ${TABLE}.target_user_id

  - dimension: topic_id
    type: int
    # hidden: true
    sql: ${TABLE}.topic_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, topics.id, posts.id]

