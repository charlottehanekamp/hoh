class LadderCompetitieEntity < Grape::Entity
  expose :user, using: UserProfileEntity
  expose :shot_against, using: UserProfileEntity
  expose :shot_at

  expose :u_total
  expose :u_one
  expose :u_two
  expose :u_three
  expose :u_four
  expose :u_five
  expose :u_arrows_shot
  expose :u_arrows_hit

  expose :sa_total
  expose :sa_one
  expose :sa_two
  expose :sa_three
  expose :sa_four
  expose :sa_five
  expose :sa_arrows_shot
  expose :sa_arrows_hit

end
