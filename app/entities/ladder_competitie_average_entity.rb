class LadderCompetitieAverageEntity < Grape::Entity

  expose :average_total, if: :u_average do |ladder_competities, options|
    u_total = options[:u_average].pluck(:u_total)
    sa_total = options[:sa_average].pluck(:sa_total)
    count = u_total.count + sa_total.count
    count == 0 ? count=1 : count
    total = (u_total.sum + sa_total.sum) / count
  end
  expose :average_arrows_hit, if: :u_average do |ladder_competities, options|
    u_total = options[:u_average].pluck(:u_arrows_hit)
    sa_total = options[:sa_average].pluck(:sa_arrows_hit)
    count = u_total.count + sa_total.count
    count == 0 ? count=1 : count
    total = (u_total.sum + sa_total.sum) / count
  end
  expose :average_arrows_shot, if: :u_average do |ladder_competities, options|
    u_total = options[:u_average].pluck(:u_arrows_shot)
    sa_total = options[:sa_average].pluck(:sa_arrows_shot)
    count = u_total.count + sa_total.count
    count == 0 ? count=1 : count
    total = (u_total.sum + sa_total.sum) / count
  end
end
