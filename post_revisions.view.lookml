- view: post_revisions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: hidden
    type: yesno
    sql: ${TABLE}.hidden

  - dimension: modifications
    sql: ${TABLE}.modifications

  - dimension: number
    type: int
    sql: ${TABLE}.number

  - dimension: post_id
    type: int
    # hidden: true
    sql: ${TABLE}.post_id

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
    drill_fields: [id, posts.id, users.name, users.username, users.id]

