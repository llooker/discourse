- view: api_keys
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: allowed_ips
    sql: ${TABLE}.allowed_ips

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: created_by_id
    type: int
    sql: ${TABLE}.created_by_id

  - dimension: hidden
    type: yesno
    sql: ${TABLE}.hidden

  - dimension: key
    sql: ${TABLE}.key

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
    drill_fields: [id, users.name, users.username, users.id]

