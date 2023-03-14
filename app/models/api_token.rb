class ApiToken < ApplicationRecord
  validates :name, presence: true
  validates :token, presence: true

  before_validation :generate_token, on: :create

  private

  def generate_token
    self.token = Digest::MD5.hexdigest(SecureRandom.hex)
  end
end
