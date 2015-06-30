- view: badge_posts
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: avg_time
    type: int
    sql: ${TABLE}.avg_time

  - dimension_group: baked
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.baked_at

  - dimension: baked_version
    type: int
    sql: ${TABLE}.baked_version

  - dimension: bookmark_count
    type: int
    sql: ${TABLE}.bookmark_count

  - dimension: cook_method
    type: int
    sql: ${TABLE}.cook_method

  - dimension: cooked
    sql: ${TABLE}.cooked

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.deleted_at

  - dimension: deleted_by_id
    type: int
    sql: ${TABLE}.deleted_by_id

  - dimension: edit_reason
    sql: ${TABLE}.edit_reason

  - dimension: hidden
    type: yesno
    sql: ${TABLE}.hidden

  - dimension_group: hidden
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.hidden_at

  - dimension: hidden_reason_id
    type: int
    sql: ${TABLE}.hidden_reason_id

  - dimension: illegal_count
    type: int
    sql: ${TABLE}.illegal_count

  - dimension: inappropriate_count
    type: int
    sql: ${TABLE}.inappropriate_count

  - dimension: incoming_link_count
    type: int
    sql: ${TABLE}.incoming_link_count

  - dimension: last_editor_id
    type: int
    sql: ${TABLE}.last_editor_id

  - dimension_group: last_version
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_version_at

  - dimension: like_count
    type: int
    sql: ${TABLE}.like_count

  - dimension: like_score
    type: int
    sql: ${TABLE}.like_score

  - dimension: notify_moderators_count
    type: int
    sql: ${TABLE}.notify_moderators_count

  - dimension: notify_user_count
    type: int
    sql: ${TABLE}.notify_user_count

  - dimension: off_topic_count
    type: int
    sql: ${TABLE}.off_topic_count

  - dimension: percent_rank
    type: number
    sql: ${TABLE}.percent_rank

  - dimension: post_number
    type: int
    sql: ${TABLE}.post_number

  - dimension: post_type
    type: int
    sql: ${TABLE}.post_type

  - dimension: quote_count
    type: int
    sql: ${TABLE}.quote_count

  - dimension: raw
    sql: ${TABLE}.raw

  - dimension: reads
    type: int
    sql: ${TABLE}.reads

  - dimension: reply_count
    type: int
    sql: ${TABLE}.reply_count

  - dimension: reply_quoted
    type: yesno
    sql: ${TABLE}.reply_quoted

  - dimension: reply_to_post_number
    type: int
    sql: ${TABLE}.reply_to_post_number

  - dimension: reply_to_user_id
    type: int
    sql: ${TABLE}.reply_to_user_id

  - dimension: score
    type: number
    sql: ${TABLE}.score

  - dimension: self_edits
    type: int
    sql: ${TABLE}.self_edits

  - dimension: sort_order
    type: int
    sql: ${TABLE}.sort_order

  - dimension: spam_count
    type: int
    sql: ${TABLE}.spam_count

  - dimension: topic_id
    type: int
    # hidden: true
    sql: ${TABLE}.topic_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_deleted
    type: yesno
    sql: ${TABLE}.user_deleted

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: version
    type: int
    sql: ${TABLE}.version

  - dimension: vote_count
    type: int
    sql: ${TABLE}.vote_count

  - dimension: wiki
    type: yesno
    sql: ${TABLE}.wiki

  - dimension: word_count
    type: int
    sql: ${TABLE}.word_count

  - measure: count
    type: count
    drill_fields: [id, topics.id, users.name, users.username, users.id]

