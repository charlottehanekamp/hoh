class LadderCompetitie < ActiveRecord::Base
  belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'
  belongs_to :shot_against, :class_name => 'User', :foreign_key => 'shot_against_id'

  before_save :calculate_bonus_u
  before_save :calculate_bonus_sa
  before_save :calculate_total_points_u
  before_save :calculate_total_points_sa
  before_save :calculate_arrows_hit_u
  before_save :calculate_arrows_hit_sa

  validate :user_and_shot_at_is_not_the_same
  validate :arrows_hit_cannot_be_greater_than_arrows_shot_u
  validate :arrows_hit_cannot_be_greater_than_arrows_shot_sa

  protected
  def calculate_bonus_u
    self.u_bonus = self.u_arrows_shot - 4
    self.u_bonus < 0 ?  self.u_bonus = 0 : self.u_bonus
    self.u_bonus
  end

  def calculate_total_points_u
    self.u_total_without_bonus = 0
    self.u_total = 0

    self.u_total_without_bonus += 1 * self.u_one
    self.u_total_without_bonus += 2 * self.u_two
    self.u_total_without_bonus += 3 * self.u_three
    self.u_total_without_bonus += 4 * self.u_four
    self.u_total_without_bonus += 5 * self.u_five
    self.u_total = self.u_bonus + self.u_total_without_bonus
  end

  def calculate_arrows_hit_u
    self.u_arrows_hit = 0
    self.u_arrows_hit += self.u_one
    self.u_arrows_hit += self.u_two
    self.u_arrows_hit += self.u_three
    self.u_arrows_hit += self.u_four
    self.u_arrows_hit += self.u_five
    self.u_arrows_hit
  end

  def user_and_shot_at_is_not_the_same
    if self.user_id == self.shot_against_id
      errors.add(:user, 'Users can\'t be the same')
      false
    end
  end

  def arrows_hit_cannot_be_greater_than_arrows_shot_u
    if self.u_arrows_hit > self.u_arrows_shot
      errors.add(:u_arrows_hit, "Arrows hit cannot be greater than arrows shot")
      false
    end
  end

  def calculate_bonus_sa
    self.sa_bonus = self.sa_arrows_shot - 4
    self.sa_bonus < 0 ?  self.sa_bonus = 0 : self.sa_bonus
    self.sa_bonus
  end

  def calculate_total_points_sa
    self.sa_total_without_bonus = 0
    self.sa_total = 0

    self.sa_total_without_bonus += 1 * self.sa_one
    self.sa_total_without_bonus += 2 * self.sa_two
    self.sa_total_without_bonus += 3 * self.sa_three
    self.sa_total_without_bonus += 4 * self.sa_four
    self.sa_total_without_bonus += 5 * self.sa_five
    self.sa_total = self.sa_bonus + self.sa_total_without_bonus
  end

  def calculate_arrows_hit_sa
    self.sa_arrows_hit = 0
    self.sa_arrows_hit += self.sa_one
    self.sa_arrows_hit += self.sa_two
    self.sa_arrows_hit += self.sa_three
    self.sa_arrows_hit += self.sa_four
    self.sa_arrows_hit += self.sa_five
    self.sa_arrows_hit
  end

  def arrows_hit_cannot_be_greater_than_arrows_shot_sa
    if self.sa_arrows_hit > self.sa_arrows_shot
      errors.add(:sa_arrows_hit, "Arrows hit cannot be greater than arrows shot")
      false
    end
  end
end
