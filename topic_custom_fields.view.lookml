- view: topic_custom_fields
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: name
    sql: ${TABLE}.name

  - dimension: topic_id
    type: int
    # hidden: true
    sql: ${TABLE}.topic_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: value
    sql: ${TABLE}.value

  - measure: count
    type: count
    drill_fields: [id, name, topics.id]

