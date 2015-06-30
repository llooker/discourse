- view: versions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: modifications
    sql: ${TABLE}.modifications

  - dimension: number
    type: int
    sql: ${TABLE}.number

  - dimension: reverted_from
    type: int
    sql: ${TABLE}.reverted_from

  - dimension: tag
    sql: ${TABLE}.tag

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: user_name
    sql: ${TABLE}.user_name

  - dimension: user_type
    sql: ${TABLE}.user_type

  - dimension: versioned_id
    type: int
    sql: ${TABLE}.versioned_id

  - dimension: versioned_type
    sql: ${TABLE}.versioned_type

  - measure: count
    type: count
    drill_fields: [id, user_name, users.name, users.username, users.id]

