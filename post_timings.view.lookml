- view: post_timings
  fields:

  - dimension: msecs
    type: int
    sql: ${TABLE}.msecs

  - dimension: post_number
    type: int
    sql: ${TABLE}.post_number

  - dimension: topic_id
    type: int
    # hidden: true
    sql: ${TABLE}.topic_id

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [users.name, users.username, users.id, topics.id]

