class BlogEntity < Grape::Entity
  expose :title
  expose :date
  expose :body
  expose :image
  expose :created_at
end
