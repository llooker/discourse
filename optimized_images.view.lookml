- view: optimized_images
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: extension
    sql: ${TABLE}.extension

  - dimension: height
    type: int
    sql: ${TABLE}.height

  - dimension: sha1
    sql: ${TABLE}.sha1

  - dimension: upload_id
    type: int
    # hidden: true
    sql: ${TABLE}.upload_id

  - dimension: url
    sql: ${TABLE}.url

  - dimension: width
    type: int
    sql: ${TABLE}.width

  - measure: count
    type: count
    drill_fields: [id, uploads.original_filename, uploads.id]

