
desc 'Rake task update ranking'
task ranking_update: :environment do
  l_ranking = LadderRanking.order('rank desc').first
  competities = LadderCompetitie.where('shot_at = ?', 2.days.ago).order('created_at asc')

  competities.each do |c|
    lr = LadderRanking.new
    lr.update_ranking(c)
  end

  lrs = LadderRanking.all
  lrs.each do |l|
    lr = LadderRanking.new
    lr.ranking_average(l)
  end

end
