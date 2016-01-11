json.array!(@article_clasifications) do |article_clasification|
  json.extract! article_clasification, :id, :nombre_clasificacion
  json.url article_clasification_url(article_clasification, format: :json)
end
