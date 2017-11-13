json.extract! post, :id, :social,:customer_name, :customer_id, :link, :posted_datetime, :post_content, :created_at, :updated_at
json.url post_url(post, format: :json)
