- view: plugin_store_rows
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: key
    sql: ${TABLE}.key

  - dimension: plugin_name
    sql: ${TABLE}.plugin_name

  - dimension: type_name
    sql: ${TABLE}.type_name

  - dimension: value
    sql: ${TABLE}.value

  - measure: count
    type: count
    drill_fields: [id, type_name, plugin_name]

