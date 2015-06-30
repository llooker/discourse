- view: user_actions
  fields:

#   - dimension: id
#     primary_key: true
#     type: int
#     sql: ${TABLE}.id
# 
#   - dimension: acting_user_id
#     type: int
#     sql: ${TABLE}.acting_user_id

  - dimension: action_type
    type: int
    sql: ${TABLE}.action_type

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

#   - dimension: queued_post_id
#     type: int
#     sql: ${TABLE}.queued_post_id
# 
#   - dimension: target_post_id
#     type: int
#     sql: ${TABLE}.target_post_id
# 
#   - dimension: target_topic_id
#     type: int
#     sql: ${TABLE}.target_topic_id
# 
#   - dimension: target_user_id
#     type: int
#     sql: ${TABLE}.target_user_id
# 
#   - dimension_group: updated
#     type: time
#     timeframes: [time, date, week, month]
#     sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    hidden: true
    sql: ${TABLE}.user_id

#   - measure: count
#     type: count
#     drill_fields: [id, users.name, users.username, users.id]
# 
