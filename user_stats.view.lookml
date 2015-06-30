- view: user_stats
  fields:

  - dimension: days_visited
    type: int
    sql: ${TABLE}.days_visited

  - dimension_group: first_post_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.first_post_created_at

  - dimension: likes_given
    type: int
    sql: ${TABLE}.likes_given

  - dimension: likes_received
    type: int
    sql: ${TABLE}.likes_received

  - dimension_group: new_since
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.new_since

  - dimension: post_count
    type: int
    sql: ${TABLE}.post_count

  - dimension: posts_read_count
    type: int
    sql: ${TABLE}.posts_read_count

  - dimension_group: read_faq
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.read_faq

  - dimension: time_read
    type: int
    sql: ${TABLE}.time_read

  - dimension: topic_count
    type: int
    sql: ${TABLE}.topic_count

  - dimension: topic_reply_count
    type: int
    sql: ${TABLE}.topic_reply_count

  - dimension: topics_entered
    type: int
    sql: ${TABLE}.topics_entered

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [users.name, users.username, users.id]

