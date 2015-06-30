- view: draft_sequences
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: draft_key
    sql: ${TABLE}.draft_key

  - dimension: sequence
    type: int
    sql: ${TABLE}.sequence

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, users.name, users.username, users.id]

