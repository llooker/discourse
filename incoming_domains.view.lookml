- view: incoming_domains
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: https
    type: yesno
    sql: ${TABLE}.https

  - dimension: name
    sql: ${TABLE}.name

  - dimension: port
    type: int
    sql: ${TABLE}.port

  - measure: count
    type: count
    drill_fields: [id, name, incoming_referers.count]

