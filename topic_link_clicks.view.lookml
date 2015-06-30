- view: topic_link_clicks
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: ip_address
    sql: ${TABLE}.ip_address

  - dimension: topic_link_id
    type: int
    # hidden: true
    sql: ${TABLE}.topic_link_id

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
    drill_fields: [id, topic_links.id, users.name, users.username, users.id]

