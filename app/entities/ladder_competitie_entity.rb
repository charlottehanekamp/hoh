class LadderCompetitieEntity < Grape::Entity
  expose :user, using: UserProfileEntity
  expose :shot_against, using: UserProfileEntity
  expose :total
  expose :one
  expose :two
  expose :three
  expose :four
  expose :five
  expose :shot_at
  expose :arrows_shot
  expose :arrows_hit

end
