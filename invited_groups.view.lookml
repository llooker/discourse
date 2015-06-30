- view: invited_groups
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: group_id
    type: int
    # hidden: true
    sql: ${TABLE}.group_id

  - dimension: invite_id
    type: int
    # hidden: true
    sql: ${TABLE}.invite_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, invites.id, groups.name, groups.id]

