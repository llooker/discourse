- connection: discourse

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

# - explore: api_keys
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: badge_groupings
# 
# - explore: badge_posts
#   joins:
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: users
#       foreign_key: user_id


# - explore: badge_types
# 
# - explore: badges
#   joins:
#     - join: badge_groupings
#       foreign_key: badge_grouping_id
# 
#     - join: badge_types
#       foreign_key: badge_type_id


- explore: categories
  joins:
    - join: users
      foreign_key: user_id

    - join: topics
      foreign_key: topic_id


# - explore: category_custom_fields
# 
# - explore: category_featured_topics
#   joins:
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: users
#       foreign_key: topics.user_id
# 
# 
# - explore: category_featured_users
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: category_groups
#   joins:
#     - join: groups
#       foreign_key: group_id
# 
# 
# - explore: category_search_data
# 
# - explore: category_users
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: color_scheme_colors
#   joins:
#     - join: color_schemes
#       foreign_key: color_scheme_id
# 
# 
# - explore: color_schemes
# 
# - explore: draft_sequences
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: drafts
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: email_logs
#   joins:
#     - join: posts
#       foreign_key: post_id
# 
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: users
#       foreign_key: user_id


# - explore: email_tokens
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: facebook_user_infos
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: github_user_infos
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: google_user_infos
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: group_custom_fields
#   joins:
#     - join: groups
#       foreign_key: group_id


# - explore: group_users
#   joins:
#     - join: users
#       foreign_key: user_id
# 
#     - join: groups
#       foreign_key: group_id


# - explore: groups

# - explore: incoming_domains
# 
# - explore: incoming_links
#   joins:
#     - join: users
#       foreign_key: user_id
# 
#     - join: incoming_referers
#       foreign_key: incoming_referer_id
# 
#     - join: posts
#       foreign_key: post_id
# 
#     - join: incoming_domains
#       foreign_key: incoming_referers.incoming_domain_id
# 
#     - join: topics
#       foreign_key: posts.topic_id
# 
# 
# - explore: incoming_referers
#   joins:
#     - join: incoming_domains
#       foreign_key: incoming_domain_id
# 
# 
# - explore: invited_groups
#   joins:
#     - join: invites
#       foreign_key: invite_id
# 
#     - join: groups
#       foreign_key: group_id
# 
#     - join: users
#       foreign_key: invites.user_id
# 
# 
# - explore: invites
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: message_bus
# 
# - explore: notifications
#   joins:
#     - join: users
#       foreign_key: user_id
# 
#     - join: post_actions
#       foreign_key: post_action_id
# 
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: post_action_types
#       foreign_key: post_actions.post_action_type_id
# 
#     - join: posts
#       foreign_key: post_actions.post_id
# 
# 
# - explore: oauth2_user_infos
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: optimized_images
#   joins:
#     - join: uploads
#       foreign_key: upload_id
# 
#     - join: users
#       foreign_key: uploads.user_id
# 
# 
# - explore: permalinks
#   joins:
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: posts
#       foreign_key: post_id
# 
#     - join: users
#       foreign_key: topics.user_id
# 
# 
# - explore: plugin_store_rows
# 
# - explore: post_action_types
# 
# - explore: post_actions
#   joins:
#     - join: post_action_types
#       foreign_key: post_action_type_id
# 
#     - join: users
#       foreign_key: user_id
# 
#     - join: posts
#       foreign_key: post_id
# 
#     - join: topics
#       foreign_key: posts.topic_id
# 
# 
# - explore: post_custom_fields
#   joins:
#     - join: posts
#       foreign_key: post_id
# 
#     - join: topics
#       foreign_key: posts.topic_id
# 
#     - join: users
#       foreign_key: posts.user_id
# 
# 
# - explore: post_details
#   joins:
#     - join: posts
#       foreign_key: post_id
# 
#     - join: topics
#       foreign_key: posts.topic_id
# 
#     - join: users
#       foreign_key: posts.user_id
# 
# 
# - explore: post_replies
#   joins:
#     - join: posts
#       foreign_key: post_id
# 
#     - join: topics
#       foreign_key: posts.topic_id
# 
#     - join: users
#       foreign_key: posts.user_id
# 
# 
# - explore: post_revisions
#   joins:
#     - join: posts
#       foreign_key: post_id
# 
#     - join: users
#       foreign_key: user_id
# 
#     - join: topics
#       foreign_key: posts.topic_id
# 
# 
# - explore: post_search_data
#   joins:
#     - join: posts
#       foreign_key: post_id
# 
#     - join: topics
#       foreign_key: posts.topic_id
# 
#     - join: users
#       foreign_key: posts.user_id
# 
# 
# - explore: post_timings
#   joins:
#     - join: users
#       foreign_key: user_id
# 
#     - join: topics
#       foreign_key: topic_id
# 
# 
# - explore: post_uploads
#   joins:
#     - join: posts
#       foreign_key: post_id
# 
#     - join: uploads
#       foreign_key: upload_id
# 
#     - join: topics
#       foreign_key: posts.topic_id
# 
#     - join: users
#       foreign_key: posts.user_id


- explore: posts
  joins:
    - join: topics
      foreign_key: topic_id

    - join: users
      foreign_key: user_id


# - explore: quoted_posts
#   joins:
#     - join: posts
#       foreign_key: post_id
# 
#     - join: topics
#       foreign_key: posts.topic_id
# 
#     - join: users
#       foreign_key: posts.user_id
# 
# 
# - explore: schema_migrations
# 
# - explore: screened_emails
# 
# - explore: screened_ip_addresses
# 
# - explore: screened_urls
# 
# - explore: single_sign_on_records
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: site_customizations
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: site_settings
# 
# - explore: site_texts
# 
# - explore: top_topics
#   joins:
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: users
#       foreign_key: topics.user_id
# 
# 
# - explore: topic_allowed_groups
#   joins:
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: groups
#       foreign_key: group_id
# 
#     - join: users
#       foreign_key: topics.user_id
# 
# 
# - explore: topic_allowed_users
#   joins:
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: topic_custom_fields
#   joins:
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: users
#       foreign_key: topics.user_id
# 
# 
# - explore: topic_embeds
#   joins:
#     - join: posts
#       foreign_key: post_id
# 
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: users
#       foreign_key: posts.user_id
# 
# 
# - explore: topic_invites
#   joins:
#     - join: invites
#       foreign_key: invite_id
# 
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: users
#       foreign_key: invites.user_id
# 
# 
# - explore: topic_link_clicks
#   joins:
#     - join: topic_links
#       foreign_key: topic_link_id
# 
#     - join: users
#       foreign_key: user_id
# 
#     - join: topics
#       foreign_key: topic_links.topic_id
# 
#     - join: posts
#       foreign_key: topic_links.post_id
# 
# 
# - explore: topic_links
#   joins:
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: users
#       foreign_key: user_id
# 
#     - join: posts
#       foreign_key: post_id
# 
# 
# - explore: topic_search_data
#   joins:
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: users
#       foreign_key: topics.user_id
# 
# 
# - explore: topic_users
#   joins:
#     - join: users
#       foreign_key: user_id
# 
#     - join: topics
#       foreign_key: topic_id
# 
# 
# - explore: topic_views
#   joins:
#     - join: users
#       foreign_key: user_id
# 
#     - join: topics
#       foreign_key: topic_id


- explore: topics
  joins:
    - join: users
      foreign_key: user_id


# - explore: twitter_user_infos
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: uploads
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: user_actions
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: user_avatars
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: user_badges
#   joins:
#     - join: users
#       foreign_key: user_id
# 
#     - join: posts
#       foreign_key: post_id
# 
#     - join: badges
#       foreign_key: badge_id
# 
#     - join: notifications
#       foreign_key: notification_id
# 
#     - join: topics
#       foreign_key: posts.topic_id
# 
#     - join: badge_groupings
#       foreign_key: badges.badge_grouping_id
# 
#     - join: badge_types
#       foreign_key: badges.badge_type_id
# 
#     - join: post_actions
#       foreign_key: notifications.post_action_id
# 
#     - join: post_action_types
#       foreign_key: post_actions.post_action_type_id
# 
# 
# - explore: user_custom_fields
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: user_exports
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: user_fields
# 
# - explore: user_histories
#   joins:
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: posts
#       foreign_key: post_id
# 
#     - join: users
#       foreign_key: topics.user_id
# 
# 
# - explore: user_open_ids
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: user_profiles
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: user_search_data
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: user_stats
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: user_visits
#   joins:
#     - join: users
#       foreign_key: user_id


- explore: users

# - explore: versions
#   joins:
#     - join: users
#       foreign_key: user_id


# - explore: warnings
#   joins:
#     - join: topics
#       foreign_key: topic_id
# 
#     - join: users
#       foreign_key: user_id


