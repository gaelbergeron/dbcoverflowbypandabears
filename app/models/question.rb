class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :votes, as: :votable

  def all_votes
    votes.sum(:value)
  end

end
