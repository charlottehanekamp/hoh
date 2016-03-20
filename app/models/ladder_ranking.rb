class LadderRanking < ActiveRecord::Base
  belongs_to :user

  validates :rank, uniqueness: true
  validates :user, uniqueness: true

end
