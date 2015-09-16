class User < ActiveRecord::Base
  has_many :questions
  has_many :answers

  validates :email, :hashed_password, presence: true
  validates :email, uniqueness: true
  include BCrypt

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end

  def authenticate(given_password)
  	self.password == given_password
  end


end
