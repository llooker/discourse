- view: topic_views
  fields:

  - dimension: ip_address
    sql: ${TABLE}.ip_address

  - dimension: topic_id
    type: int
    hidden: true
    sql: ${TABLE}.topic_id

  - dimension: user_id
    type: int
    hidden: true
    sql: ${TABLE}.user_id

  - dimension_group: viewed
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.viewed_at

  - measure: count
    type: count
    drill_fields: [users.name, users.username, users.id, topics.id]

  - measure: unique_ip_count
    type: count_distinct
    sql: ${ip_address}
  
  - measure: running_total_unique_ips
    type: running_total
    sql: ${unique_ip_count}
