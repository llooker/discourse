- view: top_topics
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: all_score
    type: number
    sql: ${TABLE}.all_score

  - dimension: daily_likes_count
    type: int
    sql: ${TABLE}.daily_likes_count

  - dimension: daily_op_likes_count
    type: int
    sql: ${TABLE}.daily_op_likes_count

  - dimension: daily_posts_count
    type: int
    sql: ${TABLE}.daily_posts_count

  - dimension: daily_score
    type: number
    sql: ${TABLE}.daily_score

  - dimension: daily_views_count
    type: int
    sql: ${TABLE}.daily_views_count

  - dimension: monthly_likes_count
    type: int
    sql: ${TABLE}.monthly_likes_count

  - dimension: monthly_op_likes_count
    type: int
    sql: ${TABLE}.monthly_op_likes_count

  - dimension: monthly_posts_count
    type: int
    sql: ${TABLE}.monthly_posts_count

  - dimension: monthly_score
    type: number
    sql: ${TABLE}.monthly_score

  - dimension: monthly_views_count
    type: int
    sql: ${TABLE}.monthly_views_count

  - dimension: topic_id
    type: int
    # hidden: true
    sql: ${TABLE}.topic_id

  - dimension: weekly_likes_count
    type: int
    sql: ${TABLE}.weekly_likes_count

  - dimension: weekly_op_likes_count
    type: int
    sql: ${TABLE}.weekly_op_likes_count

  - dimension: weekly_posts_count
    type: int
    sql: ${TABLE}.weekly_posts_count

  - dimension: weekly_score
    type: number
    sql: ${TABLE}.weekly_score

  - dimension: weekly_views_count
    type: int
    sql: ${TABLE}.weekly_views_count

  - dimension: yearly_likes_count
    type: int
    sql: ${TABLE}.yearly_likes_count

  - dimension: yearly_op_likes_count
    type: int
    sql: ${TABLE}.yearly_op_likes_count

  - dimension: yearly_posts_count
    type: int
    sql: ${TABLE}.yearly_posts_count

  - dimension: yearly_score
    type: number
    sql: ${TABLE}.yearly_score

  - dimension: yearly_views_count
    type: int
    sql: ${TABLE}.yearly_views_count

  - measure: count
    type: count
    drill_fields: [id, topics.id]

