- view: email_logs
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: email_type
    sql: ${TABLE}.email_type

  - dimension: post_id
    type: int
    # hidden: true
    sql: ${TABLE}.post_id

  - dimension: reply_key
    sql: ${TABLE}.reply_key

  - dimension: skipped
    type: yesno
    sql: ${TABLE}.skipped

  - dimension: skipped_reason
    sql: ${TABLE}.skipped_reason

  - dimension: to_address
    sql: ${TABLE}.to_address

  - dimension: topic_id
    type: int
    # hidden: true
    sql: ${TABLE}.topic_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - posts.id
    - topics.id
    - users.name
    - users.username
    - users.id

