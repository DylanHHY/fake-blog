class User < ApplicationRecord
  # relationship
  has_many :articles

  #validates
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}, confirmation: true

  #callback
  before_create :encrupt_password

  def self.login(user_params)
    email = user_params[:email]
    pw = user_params[:password]

    hashed_password = Digest::SHA1.hexdigest("xx----#{pw}-y--y")

    find_by(email: email, password: hashed_password)
  end

  

  private
  def encrupt_password
    pw = "xx----#{self.password}-y--y"
    self.password = Digest::SHA1.hexdigest(pw)
  end

end
