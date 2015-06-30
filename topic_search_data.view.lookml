- view: topic_search_data
  fields:

  - dimension: locale
    sql: ${TABLE}.locale

  - dimension: raw_data
    sql: ${TABLE}.raw_data

  - dimension: search_data
    sql: ${TABLE}.search_data

  - dimension: topic_id
    type: int
    # hidden: true
    sql: ${TABLE}.topic_id

  - measure: count
    type: count
    drill_fields: [topics.id]

