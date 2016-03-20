class LadderCompetitie < ActiveRecord::Base
  belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'
  belongs_to :shot_against, :class_name => 'User', :foreign_key => 'shot_against_id'

  before_save :calculate_bonus
  before_save :calculate_total_points
  before_save :calculate_arrows_hit

  validate :user_and_shot_at_is_not_the_same
  validate :arrows_hit_cannot_be_greater_than_arrows_shot

  protected
  def calculate_bonus
    self.bonus = self.arrows_shot - 4
    self.bonus < 0 ?  self.bonus = 0 : self.bonus
    self.bonus
  end

  def calculate_total_points
    self.total_without_bonus = 0
    self.total = 0

    self.total_without_bonus += 1 * self.one
    self.total_without_bonus += 2 * self.two
    self.total_without_bonus += 3 * self.three
    self.total_without_bonus += 4 * self.four
    self.total_without_bonus += 5 * self.five
    self.total = self.bonus + self.total_without_bonus
  end

  def calculate_arrows_hit
    self.arrows_hit = 0
    self.arrows_hit += self.one
    self.arrows_hit += self.two
    self.arrows_hit += self.three
    self.arrows_hit += self.four
    self.arrows_hit += self.five
    self.arrows_hit
  end

  def user_and_shot_at_is_not_the_same
    if self.user_id == self.shot_against_id
      errors.add(:user, 'Users can\'t be the same')
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
