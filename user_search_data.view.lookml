- view: user_search_data
  fields:

  - dimension: locale
    sql: ${TABLE}.locale

  - dimension: raw_data
    sql: ${TABLE}.raw_data

  - dimension: search_data
    sql: ${TABLE}.search_data

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [users.name, users.username, users.id]

