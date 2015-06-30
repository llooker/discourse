- view: color_schemes
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: enabled
    type: yesno
    sql: ${TABLE}.enabled

  - dimension: name
    sql: ${TABLE}.name

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: version
    type: int
    sql: ${TABLE}.version

  - dimension: versioned_id
    type: int
    sql: ${TABLE}.versioned_id

  - measure: count
    type: count
    drill_fields: [id, name, color_scheme_colors.count]

