class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :votes, as: :votable

  def sum_of_votes
    votes.sum(:votable_id)
    # votes.count

  end

end
