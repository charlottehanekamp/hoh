class UserProfileEntity < Grape::Entity
  expose :first_name
  expose :last_name, unless: nil do |user|
    user.last_name? ? user.last_name : ''
  end
  expose :hand
  expose :avatar, unless: nil do |user|
    user.avatar? ? user.avatar : ''
  end
  expose :functie
  expose :member_since
  expose :content
  
end
