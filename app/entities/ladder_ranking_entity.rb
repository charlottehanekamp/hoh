class LadderRankingEntity < Grape::Entity
  expose :rank
  expose :user, using: UserProfileEntity
  expose :average

end
