- view: categories
  fields:

  - dimension: id
    primary_key: true
    type: int
    hidden: true
    sql: ${TABLE}.id

#   - dimension: allow_badges
#     type: yesno
#     sql: ${TABLE}.allow_badges
# 
#   - dimension: auto_close_based_on_last_post
#     type: yesno
#     sql: ${TABLE}.auto_close_based_on_last_post
# 
#   - dimension: auto_close_hours
#     type: number
#     sql: ${TABLE}.auto_close_hours
# 
#   - dimension: background_url
#     sql: ${TABLE}.background_url
# 
#   - dimension: color
#     sql: ${TABLE}.color

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    sql: ${TABLE}.description

#   - dimension: email_in
#     sql: ${TABLE}.email_in
# 
#   - dimension: email_in_allow_strangers
#     type: yesno
#     sql: ${TABLE}.email_in_allow_strangers

  - dimension: latest_post_id
    type: int
    sql: ${TABLE}.latest_post_id

  - dimension: latest_topic_id
    type: int
    sql: ${TABLE}.latest_topic_id

#   - dimension: logo_url
#     sql: ${TABLE}.logo_url

  - dimension: name
    sql: ${TABLE}.name

  - dimension: name_lower
    sql: ${TABLE}.name_lower

  - dimension: parent_category_id
    type: int
    hidden: true
    sql: ${TABLE}.parent_category_id

#   - dimension: position
#     type: int
#     sql: ${TABLE}.position

  - dimension: post_count
    type: int
    sql: ${TABLE}.post_count

#   - dimension: posts_day
#     type: int
#     sql: ${TABLE}.posts_day
# 
#   - dimension: posts_month
#     type: int
#     sql: ${TABLE}.posts_month
# 
#   - dimension: posts_week
#     type: int
#     sql: ${TABLE}.posts_week
# 
#   - dimension: posts_year
#     type: int
#     sql: ${TABLE}.posts_year
# 
#   - dimension: read_restricted
#     type: yesno
#     sql: ${TABLE}.read_restricted
# 
#   - dimension: slug
#     sql: ${TABLE}.slug

#   - dimension: text_color
#     sql: ${TABLE}.text_color

  - dimension: topic_count
    type: int
    sql: ${TABLE}.topic_count

  - dimension: topic_id
    type: int
    hidden: true
    sql: ${TABLE}.topic_id

#   - dimension: topics_day
#     type: int
#     sql: ${TABLE}.topics_day
# 
#   - dimension: topics_month
#     type: int
#     sql: ${TABLE}.topics_month
# 
#   - dimension: topics_week
#     type: int
#     sql: ${TABLE}.topics_week
# 
#   - dimension: topics_year
#     type: int
#     sql: ${TABLE}.topics_year

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    hidden: true
    sql: ${TABLE}.user_id


# -----------MEASURES---------------

  - measure: count
    type: count
    drill_fields: detail*

  - measure: post_count_total
    type: sum
    sql: ${post_count}
  
  - measure: topic_count_total
    type: sum
    sql: ${topic_count}

  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - users.name
    - users.username
    - users.id
    - topics.id

