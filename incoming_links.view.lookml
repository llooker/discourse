- view: incoming_links
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: current_user_id
    type: int
    sql: ${TABLE}.current_user_id

  - dimension: incoming_referer_id
    type: int
    # hidden: true
    sql: ${TABLE}.incoming_referer_id

  - dimension: ip_address
    sql: ${TABLE}.ip_address

  - dimension: post_id
    type: int
    # hidden: true
    sql: ${TABLE}.post_id

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
    - incoming_referers.id
    - posts.id

