- view: user_badges
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: badge_id
    type: int
    # hidden: true
    sql: ${TABLE}.badge_id

  - dimension_group: granted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.granted_at

  - dimension: granted_by_id
    type: int
    sql: ${TABLE}.granted_by_id

  - dimension: notification_id
    type: int
    # hidden: true
    sql: ${TABLE}.notification_id

  - dimension: post_id
    type: int
    # hidden: true
    sql: ${TABLE}.post_id

  - dimension: seq
    type: int
    sql: ${TABLE}.seq

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
    - posts.id
    - badges.id
    - badges.name
    - notifications.id

