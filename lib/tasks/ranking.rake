
desc 'Rake task update ranking'
task ranking_update: :environment do
  l_ranking = LadderRanking.order('rank desc').first
  competities = LadderCompetitie.where('shot_at = ?', Date.current).order('created_at asc')
  competities.each do |c|
    lr = LadderRanking.new
    lr.update_ranking(c)
  end
end
