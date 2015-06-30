- view: user_visits
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: posts_read
    type: int
    sql: ${TABLE}.posts_read

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension_group: visited
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.visited_at

  - measure: count
    type: count
    drill_fields: [id, users.name, users.username, users.id]

