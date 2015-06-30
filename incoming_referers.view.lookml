- view: incoming_referers
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: incoming_domain_id
    type: int
    # hidden: true
    sql: ${TABLE}.incoming_domain_id

  - dimension: path
    sql: ${TABLE}.path

  - measure: count
    type: count
    drill_fields: [id, incoming_domains.name, incoming_domains.id, incoming_links.count]

