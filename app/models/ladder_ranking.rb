class LadderRanking < ActiveRecord::Base
  belongs_to :user

  validates :user_id, uniqueness: { scope: [:rank] }

  def gewonnen(c_r, c_sa, c, r)
    l =  "Gewonnen: #{r}\n"

    (c_r-1).downto(c_sa) { |i|
      j = i+1
      LadderRanking.where(rank: i).limit(1).first.update(rank: j)
    }
    LadderRanking.where(rank: c_r, user: c.user).limit(1).first.update(rank: c_sa)

    p l
  end

  def verloren(c_r, c_sa, c, r)
    l =  "Verloren: #{r}\n"
    p l
  end

  def update_ranking_every_day
    l_ranking = LadderRanking.order('rank desc').first
    competities = LadderCompetitie.where('shot_at = ?', Date.current).order('created_at asc')
    competities.each do |c|
      c_r = c.user.ladder_ranking.rank
      c_sa = c.shot_against.ladder_ranking.rank
      r = "##{c_r}. #{c.user.first_name}  - ##{c_sa}. #{c.shot_against.first_name}"

      if c.u_total > c.sa_total
        gewonnen(c_r, c_sa, c, r)
      elsif c.u_arrows_shot > c.sa_arrows_shot
        gewonnen(c_r, c_sa, c, r)
      elsif c.u_arrows_hit > c.sa_arrows_hit
        gewonnen(c_r, c_sa, c, r)
      else
        verloren(c_r, c_sa, c, r)
      end
    end
  end

end
