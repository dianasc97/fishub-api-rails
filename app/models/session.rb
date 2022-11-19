class Session < ApplicationRecord
  has_secure_password

  validates :user, presence: true
                   uniqueness: { case_sensitive: false}

  has_many :tackle_box_items, dependent: :destroy
  has_many :catches, dependent: :destroy

  def self.authenticate(username, password)
    user = User.find_by(username: username)
    user && user.authenticate(password)
  end
end
