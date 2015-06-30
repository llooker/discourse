- connection: discourse

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: categories
  joins:
    - join: users
      foreign_key: user_id

    - join: topics
      foreign_key: topic_id

- explore: posts
  joins:
    - join: topics
      foreign_key: topic_id

    - join: users
      foreign_key: user_id

- explore: topics
  joins:
    - join: users
      foreign_key: user_id

- explore: users

