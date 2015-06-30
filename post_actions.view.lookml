- view: post_actions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: agreed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.agreed_at

  - dimension: agreed_by_id
    type: int
    sql: ${TABLE}.agreed_by_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: deferred
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deferred_at

  - dimension: deferred_by_id
    type: int
    sql: ${TABLE}.deferred_by_id

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: deleted_by_id
    type: int
    sql: ${TABLE}.deleted_by_id

  - dimension_group: disagreed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.disagreed_at

  - dimension: disagreed_by_id
    type: int
    sql: ${TABLE}.disagreed_by_id

  - dimension: post_action_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.post_action_type_id

  - dimension: post_id
    type: int
    # hidden: true
    sql: ${TABLE}.post_id

  - dimension: related_post_id
    type: int
    sql: ${TABLE}.related_post_id

  - dimension: staff_took_action
    type: yesno
    sql: ${TABLE}.staff_took_action

  - dimension: targets_topic
    type: yesno
    sql: ${TABLE}.targets_topic

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
    - post_action_types.id
    - users.name
    - users.username
    - users.id
    - posts.id
    - notifications.count

