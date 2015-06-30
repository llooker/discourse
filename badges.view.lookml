- view: badges
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: allow_title
    type: yesno
    sql: ${TABLE}.allow_title

  - dimension: auto_revoke
    type: yesno
    sql: ${TABLE}.auto_revoke

  - dimension: badge_grouping_id
    type: int
    # hidden: true
    sql: ${TABLE}.badge_grouping_id

  - dimension: badge_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.badge_type_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    sql: ${TABLE}.description

  - dimension: enabled
    type: yesno
    sql: ${TABLE}.enabled

  - dimension: grant_count
    type: int
    sql: ${TABLE}.grant_count

  - dimension: icon
    sql: ${TABLE}.icon

  - dimension: image
    sql: ${TABLE}.image

  - dimension: listable
    type: yesno
    sql: ${TABLE}.listable

  - dimension: long_description
    sql: ${TABLE}.long_description

  - dimension: multiple_grant
    type: yesno
    sql: ${TABLE}.multiple_grant

  - dimension: name
    sql: ${TABLE}.name

  - dimension: query
    sql: ${TABLE}.query

  - dimension: show_posts
    type: yesno
    sql: ${TABLE}.show_posts

  - dimension: system
    type: yesno
    sql: ${TABLE}.system

  - dimension: target_posts
    type: yesno
    sql: ${TABLE}.target_posts

  - dimension: trigger
    type: int
    sql: ${TABLE}.trigger

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - badge_groupings.id
    - badge_groupings.name
    - badge_types.id
    - badge_types.name
    - user_badges.count

