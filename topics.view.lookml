- view: topics
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: archetype
    sql: ${TABLE}.archetype

  - dimension: archived
    type: yesno
    sql: ${TABLE}.archived

  - dimension_group: auto_close
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.auto_close_at

  - dimension: auto_close_based_on_last_post
    type: yesno
    sql: ${TABLE}.auto_close_based_on_last_post

  - dimension: auto_close_hours
    type: number
    sql: ${TABLE}.auto_close_hours

  - dimension_group: auto_close_started
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.auto_close_started_at

  - dimension: auto_close_user_id
    type: int
    sql: ${TABLE}.auto_close_user_id

  - dimension: avg_time
    type: int
    sql: ${TABLE}.avg_time

  - dimension: bookmark_count
    type: int
    sql: ${TABLE}.bookmark_count

  - dimension_group: bumped
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.bumped_at

  - dimension: category_id
    type: int
    sql: ${TABLE}.category_id

  - dimension: closed
    type: yesno
    sql: ${TABLE}.closed

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

  - dimension: excerpt
    sql: ${TABLE}.excerpt

  - dimension: featured_user1_id
    type: int
    sql: ${TABLE}.featured_user1_id

  - dimension: featured_user2_id
    type: int
    sql: ${TABLE}.featured_user2_id

  - dimension: featured_user3_id
    type: int
    sql: ${TABLE}.featured_user3_id

  - dimension: featured_user4_id
    type: int
    sql: ${TABLE}.featured_user4_id

  - dimension: has_summary
    type: yesno
    sql: ${TABLE}.has_summary

  - dimension: highest_post_number
    type: int
    sql: ${TABLE}.highest_post_number

  - dimension: illegal_count
    type: int
    sql: ${TABLE}.illegal_count

  - dimension: image_url
    sql: ${TABLE}.image_url

  - dimension: inappropriate_count
    type: int
    sql: ${TABLE}.inappropriate_count

  - dimension: incoming_link_count
    type: int
    sql: ${TABLE}.incoming_link_count

  - dimension: last_post_user_id
    type: int
    sql: ${TABLE}.last_post_user_id

  - dimension_group: last_posted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_posted_at

  - dimension: like_count
    type: int
    sql: ${TABLE}.like_count

  - dimension: moderator_posts_count
    type: int
    sql: ${TABLE}.moderator_posts_count

  - dimension: notify_moderators_count
    type: int
    sql: ${TABLE}.notify_moderators_count

  - dimension: notify_user_count
    type: int
    sql: ${TABLE}.notify_user_count

  - dimension: off_topic_count
    type: int
    sql: ${TABLE}.off_topic_count

  - dimension: participant_count
    type: int
    sql: ${TABLE}.participant_count

  - dimension: percent_rank
    type: number
    sql: ${TABLE}.percent_rank

  - dimension_group: pinned
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.pinned_at

  - dimension: pinned_globally
    type: yesno
    sql: ${TABLE}.pinned_globally

  - dimension: posts_count
    type: int
    sql: ${TABLE}.posts_count

  - dimension: reply_count
    type: int
    sql: ${TABLE}.reply_count

  - dimension: score
    type: number
    sql: ${TABLE}.score

  - dimension: slug
    sql: ${TABLE}.slug

  - dimension: spam_count
    type: int
    sql: ${TABLE}.spam_count

  - dimension: subtype
    sql: ${TABLE}.subtype

  - dimension: title
    sql: ${TABLE}.title

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: views
    type: int
    sql: ${TABLE}.views

  - dimension: visible
    type: yesno
    sql: ${TABLE}.visible

  - dimension: vote_count
    type: int
    sql: ${TABLE}.vote_count

  - dimension: word_count
    type: int
    sql: ${TABLE}.word_count

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - users.name
    - users.username
    - users.id
    - badge_posts.count
    - categories.count
    - category_featured_topics.count
    - email_logs.count
    - notifications.count
    - permalinks.count
    - posts.count
    - post_timings.count
    - topic_allowed_groups.count
    - topic_allowed_users.count
    - topic_custom_fields.count
    - topic_embeds.count
    - topic_invites.count
    - topic_links.count
    - topic_search_data.count
    - topic_users.count
    - topic_views.count
    - top_topics.count
    - user_histories.count
    - warnings.count

