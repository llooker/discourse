- view: category_groups
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

  - dimension: group_id
    type: int
    # hidden: true
    sql: ${TABLE}.group_id

  - dimension: permission_type
    type: int
    sql: ${TABLE}.permission_type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, groups.name, groups.id]

