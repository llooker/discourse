- view: topic_links
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: clicks
    type: int
    sql: ${TABLE}.clicks

  - dimension_group: crawled
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.crawled_at

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: domain
    sql: ${TABLE}.domain

  - dimension: internal
    type: yesno
    sql: ${TABLE}.internal

  - dimension: link_post_id
    type: int
    sql: ${TABLE}.link_post_id

  - dimension: link_topic_id
    type: int
    sql: ${TABLE}.link_topic_id

  - dimension: post_id
    type: int
    # hidden: true
    sql: ${TABLE}.post_id

  - dimension: quote
    type: yesno
    sql: ${TABLE}.quote

  - dimension: reflection
    type: yesno
    sql: ${TABLE}.reflection

  - dimension: title
    sql: ${TABLE}.title

  - dimension: topic_id
    type: int
    # hidden: true
    sql: ${TABLE}.topic_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: url
    sql: ${TABLE}.url

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - topics.id
    - users.name
    - users.username
    - users.id
    - posts.id
    - topic_link_clicks.count

