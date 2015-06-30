- view: user_avatars
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: custom_upload_id
    type: int
    sql: ${TABLE}.custom_upload_id

  - dimension: gravatar_upload_id
    type: int
    sql: ${TABLE}.gravatar_upload_id

  - dimension_group: last_gravatar_download_attempt
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_gravatar_download_attempt

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
    drill_fields: [id, users.name, users.username, users.id]

