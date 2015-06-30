- view: uploads
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: filesize
    type: int
    sql: ${TABLE}.filesize

  - dimension: height
    type: int
    sql: ${TABLE}.height

  - dimension: origin
    sql: ${TABLE}.origin

  - dimension: original_filename
    sql: ${TABLE}.original_filename

  - dimension: retain_hours
    type: int
    sql: ${TABLE}.retain_hours

  - dimension: sha1
    sql: ${TABLE}.sha1

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: url
    sql: ${TABLE}.url

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: width
    type: int
    sql: ${TABLE}.width

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - original_filename
    - users.name
    - users.username
    - users.id
    - optimized_images.count
    - post_uploads.count

