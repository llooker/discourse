- view: google_user_infos
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: email
    sql: ${TABLE}.email

  - dimension: first_name
    sql: ${TABLE}.first_name

  - dimension: gender
    sql: ${TABLE}.gender

  - dimension: google_user_id
    sql: ${TABLE}.google_user_id

  - dimension: last_name
    sql: ${TABLE}.last_name

  - dimension: link
    sql: ${TABLE}.link

  - dimension: name
    sql: ${TABLE}.name

  - dimension: picture
    sql: ${TABLE}.picture

  - dimension: profile_link
    sql: ${TABLE}.profile_link

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
    - first_name
    - last_name
    - name
    - users.name
    - users.username
    - users.id

