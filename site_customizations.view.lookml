- view: site_customizations
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: body_tag
    sql: ${TABLE}.body_tag

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: enabled
    type: yesno
    sql: ${TABLE}.enabled

  - dimension: footer
    sql: ${TABLE}.footer

  - dimension: head_tag
    sql: ${TABLE}.head_tag

  - dimension: header
    sql: ${TABLE}.header

  - dimension: key
    sql: ${TABLE}.key

  - dimension: mobile_footer
    sql: ${TABLE}.mobile_footer

  - dimension: mobile_header
    sql: ${TABLE}.mobile_header

  - dimension: mobile_stylesheet
    sql: ${TABLE}.mobile_stylesheet

  - dimension: mobile_stylesheet_baked
    sql: ${TABLE}.mobile_stylesheet_baked

  - dimension: mobile_top
    sql: ${TABLE}.mobile_top

  - dimension: name
    sql: ${TABLE}.name

  - dimension: stylesheet
    sql: ${TABLE}.stylesheet

  - dimension: stylesheet_baked
    sql: ${TABLE}.stylesheet_baked

  - dimension: top
    sql: ${TABLE}.top

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, name, users.name, users.username, users.id]

