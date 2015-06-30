- view: user_profiles
  fields:

  - dimension: badge_granted_title
    type: yesno
    sql: ${TABLE}.badge_granted_title

  - dimension: bio_cooked
    sql: ${TABLE}.bio_cooked

  - dimension: bio_cooked_version
    type: int
    sql: ${TABLE}.bio_cooked_version

  - dimension: bio_raw
    sql: ${TABLE}.bio_raw

  - dimension: card_background
    sql: ${TABLE}.card_background

  - dimension: card_image_badge_id
    type: int
    sql: ${TABLE}.card_image_badge_id

  - dimension: dismissed_banner_key
    type: int
    sql: ${TABLE}.dismissed_banner_key

  - dimension: location
    sql: ${TABLE}.location

  - dimension: profile_background
    sql: ${TABLE}.profile_background

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: website
    sql: ${TABLE}.website

  - measure: count
    type: count
    drill_fields: [users.name, users.username, users.id]

