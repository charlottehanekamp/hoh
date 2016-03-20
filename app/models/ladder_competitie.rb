class LadderCompetitie < ActiveRecord::Base
  belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'
  belongs_to :shot_against, :class_name => 'User', :foreign_key => 'shot_against_id'

  before_save :calculate_bonus
  before_save :calculate_total_points

  validate :user_and_shot_at_is_not_the_same
  validate :arrows_shot_and_score_is_the_same
  validate :arrows_hit_cannot_be_greater_than_arrows_shot

  protected
  def calculate_bonus
    self.bonus = self.arrows_shot - 4
    self.bonus < 0 ?  self.bonus = 0 : self.bonus
    self.bonus
  end

  def calculate_total_points
    self.total = 0
    self.total += 1 * self.one
    self.total += 2 * self.two
    self.total += 3 * self.three
    self.total += 4 * self.four
    self.total += 5 * self.five
    self.total += self.bonus
    self.total
  end

  def user_and_shot_at_is_not_the_same
    if self.user_id == self.shot_against_id
      errors.add(:user, 'Users can\'t be the same')
      false
    end
  end

  def arrows_shot_and_score_is_the_same
    total = 0
    total = self.one + self.two + self.three + self.four + self.five
    unless total == self.arrows_hit
      errors.add(:arrows_hit, "Total arrows hit is not the same as filled in arrows (#{total})")
      false
    end
  end

  def arrows_hit_cannot_be_greater_than_arrows_shot
    if self.arrows_hit > self.arrows_shot
      errors.add(:arrows_hit, "Arrows hit cannot be greater than arrows shot")
      false
    end
  end
end
