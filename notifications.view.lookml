- view: notifications
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: data
    sql: ${TABLE}.data

  - dimension: notification_type
    type: int
    sql: ${TABLE}.notification_type

  - dimension: post_action_id
    type: int
    # hidden: true
    sql: ${TABLE}.post_action_id

  - dimension: post_number
    type: int
    sql: ${TABLE}.post_number

  - dimension: read
    type: yesno
    sql: ${TABLE}.read

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
    - users.name
    - users.username
    - users.id
    - post_actions.id
    - topics.id
    - user_badges.count

