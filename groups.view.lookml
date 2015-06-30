- view: groups
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: alias_level
    type: int
    sql: ${TABLE}.alias_level

  - dimension: automatic
    type: yesno
    sql: ${TABLE}.automatic

  - dimension: automatic_membership_email_domains
    sql: ${TABLE}.automatic_membership_email_domains

  - dimension: automatic_membership_retroactive
    type: yesno
    sql: ${TABLE}.automatic_membership_retroactive

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: name
    sql: ${TABLE}.name

  - dimension: primary_group
    type: yesno
    sql: ${TABLE}.primary_group

  - dimension: title
    sql: ${TABLE}.title

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_count
    type: int
    sql: ${TABLE}.user_count

  - dimension: visible
    type: yesno
    sql: ${TABLE}.visible

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - category_groups.count
    - group_custom_fields.count
    - group_users.count
    - invited_groups.count
    - topic_allowed_groups.count

