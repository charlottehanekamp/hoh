class AccessKeyEntity < Grape::Entity
  expose :access_token
  expose :user, using: UserEntity
end
