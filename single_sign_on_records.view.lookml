- view: single_sign_on_records
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: external_avatar_url
    sql: ${TABLE}.external_avatar_url

  - dimension: external_email
    sql: ${TABLE}.external_email

  - dimension: external_id
    sql: ${TABLE}.external_id

  - dimension: external_name
    sql: ${TABLE}.external_name

  - dimension: external_username
    sql: ${TABLE}.external_username

  - dimension: last_payload
    sql: ${TABLE}.last_payload

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
    - external_username
    - external_name
    - users.name
    - users.username
    - users.id

