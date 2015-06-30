- view: category_featured_topics
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: category_id
    type: int
    sql: ${TABLE}.category_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: rank
    type: int
    sql: ${TABLE}.rank

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
    drill_fields: [id, topics.id]

