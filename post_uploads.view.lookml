- view: post_uploads
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: post_id
    type: int
    # hidden: true
    sql: ${TABLE}.post_id

  - dimension: upload_id
    type: int
    # hidden: true
    sql: ${TABLE}.upload_id

  - measure: count
    type: count
    drill_fields: [id, posts.id, uploads.original_filename, uploads.id]

