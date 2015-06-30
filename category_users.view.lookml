- view: category_users
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: category_id
    type: int
    sql: ${TABLE}.category_id

  - dimension: notification_level
    type: int
    sql: ${TABLE}.notification_level

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, users.name, users.username, users.id]

