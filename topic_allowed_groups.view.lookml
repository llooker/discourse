- view: topic_allowed_groups
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: group_id
    type: int
    # hidden: true
    sql: ${TABLE}.group_id

  - dimension: topic_id
    type: int
    # hidden: true
    sql: ${TABLE}.topic_id

  - measure: count
    type: count
    drill_fields: [id, topics.id, groups.name, groups.id]

