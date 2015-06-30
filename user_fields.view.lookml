- view: user_fields
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    sql: ${TABLE}.description

  - dimension: editable
    type: yesno
    sql: ${TABLE}.editable

  - dimension: field_type
    sql: ${TABLE}.field_type

  - dimension: name
    sql: ${TABLE}.name

  - dimension: required
    type: yesno
    sql: ${TABLE}.required

  - dimension: show_on_profile
    type: yesno
    sql: ${TABLE}.show_on_profile

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, name]

