class RateEntity < Grape::Entity
  expose :title
  expose :description
  expose :price
  expose :expires_in
end
