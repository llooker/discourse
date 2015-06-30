- view: post_details
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: extra
    sql: ${TABLE}.extra

  - dimension: key
    sql: ${TABLE}.key

  - dimension: post_id
    type: int
    # hidden: true
    sql: ${TABLE}.post_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: value
    sql: ${TABLE}.value

  - measure: count
    type: count
    drill_fields: [id, posts.id]

