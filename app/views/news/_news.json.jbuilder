json.extract! news, :id, :title, :description, :when_went, :created_at, :updated_at
json.url news_url(news, format: :json)
