- view: post_search_data
  fields:

  - dimension: locale
    sql: ${TABLE}.locale

  - dimension: post_id
    type: int
    # hidden: true
    sql: ${TABLE}.post_id

  - dimension: raw_data
    sql: ${TABLE}.raw_data

  - dimension: search_data
    sql: ${TABLE}.search_data

  - measure: count
    type: count
    drill_fields: [posts.id]

