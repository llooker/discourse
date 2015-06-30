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

# - explore: topics
#   joins:
#     - join: posts
#       foreign_key: posts_id
      
- explore: user_actions
  joins:
    - join: users
      foreign_key: user_id
    
    - join: user_visits
      sql_on: ${users.id} = ${user_visits.user_id}
      relationship: one_to_many
    
    
      

    
   

