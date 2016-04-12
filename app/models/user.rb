class User < ActiveRecord::Base
  mount_uploader :avatar, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :access_keys
  has_many :ladder_competities, :class_name => 'LadderCompetitie', :foreign_key => 'user_id'
  has_many :shot_againsts, :class_name => 'LadderCompetitie', :foreign_key => 'shot_against_id'
  has_one :ladder_ranking
  before_validation :delete_characters_postal_code_telnr_iban
  validates_format_of :postal_code, :with => /\A[\w]{4}[A-Z]{2}\z/, message: :bad_postal_code, :allow_blank => true
  validates_format_of :tel_nr, :with => /\A((06[0-9]{1})|(0[0-9]{2}))[0-9]{7}\z/, message: :bad_tel, :allow_blank => true
  after_create :put_user_in_ladder_ranking
  after_save :update_ranking
  enum hand: [:links, :rechts]
  enum user_type: [:lid, :bestuur, :donateur]
  enum functie: [:voorzitter, :secretaris, :penningmeester]


  def display_name
    "#{first_name} #{last_name}"
  end

  protected
  def user_type_bestuur_can_not_be_empty_functie
    unless user_type = 'bestuur' && functie.nil?
      errors.add(:user, 'Can\'t be blank')
      false
    end
  end

  def delete_characters_postal_code_telnr_iban
    self.postal_code.gsub!(/\W+/, '') unless self.postal_code.nil?
    self.tel_nr.gsub!(/\W+/, '')  unless self.tel_nr.nil?
  end

  def put_user_in_ladder_ranking
    last = LadderRanking.order('rank desc').select(:rank).pluck(:rank).first
    last = 0 if last.nil?
    lr = LadderRanking.new(user: self, rank: last+1)
    lr.errors.messages unless lr.save

  end
  def update_ranking
    ladder_ranking.update_ranking_every_day
  end
end
