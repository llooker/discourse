- view: topic_users
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: bookmarked
    type: yesno
    sql: ${TABLE}.bookmarked

  - dimension_group: cleared_pinned
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.cleared_pinned_at

  - dimension_group: first_visited
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.first_visited_at

  - dimension: highest_seen_post_number
    type: int
    sql: ${TABLE}.highest_seen_post_number

  - dimension: last_emailed_post_number
    type: int
    sql: ${TABLE}.last_emailed_post_number

  - dimension: last_read_post_number
    type: int
    sql: ${TABLE}.last_read_post_number

  - dimension_group: last_visited
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_visited_at

  - dimension: liked
    type: yesno
    sql: ${TABLE}.liked

  - dimension: notification_level
    type: int
    sql: ${TABLE}.notification_level

  - dimension_group: notifications_changed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.notifications_changed_at

  - dimension: notifications_reason_id
    type: int
    sql: ${TABLE}.notifications_reason_id

  - dimension: posted
    type: yesno
    sql: ${TABLE}.posted

  - dimension: topic_id
    type: int
    # hidden: true
    sql: ${TABLE}.topic_id

  - dimension: total_msecs_viewed
    type: int
    sql: ${TABLE}.total_msecs_viewed

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, users.name, users.username, users.id, topics.id]

