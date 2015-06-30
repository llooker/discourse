- view: screened_ip_addresses
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: action_type
    type: int
    sql: ${TABLE}.action_type

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: ip_address
    sql: ${TABLE}.ip_address

  - dimension_group: last_match
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_match_at

  - dimension: match_count
    type: int
    sql: ${TABLE}.match_count

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

