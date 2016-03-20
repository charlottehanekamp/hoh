class AccessKey < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user, :access_token, :expires_at
  validates_uniqueness_of :access_token

  before_validation :ensure_access_token
  before_validation :set_expiration
  after_create :access_key


  def access_key
    Rails.cache.fetch("#{cache_key}/access_key", expires_in: 12.hours) do
      self.access_token
    end

    # p Rails.cache.read("#{cache_key}/access_key")

  end

  def expired?
    DateTime.current >= self.expires_at
  end

  def update_expiry
    unless expires_after.nil?
      self.update_columns(expires_at: expires_after.days.since)
    end
  end

  def ensure_access_token
    self.access_token ||= generate_access_token
  end

  private
    def generate_access_token
      loop do
        token = SecureRandom.hex
        break token unless AccessKey.find_by_access_token(token)
      end
    end

    def set_expiration
      if expires_after.nil?
        self.expires_after  = 1
      end

      self.expires_at = self.expires_after.days.since if self.expires_at.nil?
    end
end
