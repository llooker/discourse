- view: post_action_types
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: icon
    sql: ${TABLE}.icon

  - dimension: is_flag
    type: yesno
    sql: ${TABLE}.is_flag

  - dimension: name_key
    sql: ${TABLE}.name_key

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, post_actions.count]

