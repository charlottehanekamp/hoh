class LadderCompetitieAverageEntity < Grape::Entity

  expose :average_total, if: :average do |ladder_competities, options|
    total = options[:average].pluck(:total)
    total.sum / total.count
  end
  expose :average_arrows_hit, if: :average do |ladder_competities, options|
    total = options[:average].pluck(:arrows_hit)
    total.sum / total.count
  end
  expose :average_arrows_shot, if: :average do |ladder_competities, options|
    total = options[:average].pluck(:arrows_shot)
    total.sum / total.count
  end
end
