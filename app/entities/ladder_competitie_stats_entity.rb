class LadderCompetitieStatsEntity < Grape::Entity

  expose :average_total, if: :u_stats do |ladder_competities, options|
    u_total = options[:u_stats].pluck(:u_total)
    sa_total = options[:sa_stats].pluck(:sa_total)
    total = u_total + sa_total
  end
  expose :average_arrows_hit, if: :u_stats do |ladder_competities, options|
    u_total = options[:u_stats].pluck(:u_arrows_hit)
    sa_total = options[:sa_stats].pluck(:sa_arrows_hit)
    total = u_total + sa_total
  end
  expose :average_arrows_shot, if: :u_stats do |ladder_competities, options|
    u_total = options[:u_stats].pluck(:u_arrows_shot)
    sa_total = options[:sa_stats].pluck(:sa_arrows_shot)
    total = u_total + sa_total
  end
  expose :average_shot_at, if: :u_stats do |ladder_competities, options|
    u_total = options[:u_stats].pluck(:shot_at)
    sa_total = options[:sa_stats].pluck(:shot_at)
    total = u_total + sa_total
  end
end
