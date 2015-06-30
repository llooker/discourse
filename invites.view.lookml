- view: invites
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: deleted_by_id
    type: int
    sql: ${TABLE}.deleted_by_id

  - dimension: email
    sql: ${TABLE}.email

  - dimension_group: invalidated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.invalidated_at

  - dimension: invite_key
    sql: ${TABLE}.invite_key

  - dimension: invited_by_id
    type: int
    sql: ${TABLE}.invited_by_id

  - dimension_group: redeemed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.redeemed_at

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
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - users.name
    - users.username
    - users.id
    - invited_groups.count
    - topic_invites.count

