- view: category_search_data
  fields:

  - dimension: category_id
    type: int
    sql: ${TABLE}.category_id

  - dimension: locale
    sql: ${TABLE}.locale

  - dimension: raw_data
    sql: ${TABLE}.raw_data

  - dimension: search_data
    sql: ${TABLE}.search_data

  - measure: count
    type: count
    drill_fields: []

