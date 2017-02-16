
class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers

def vote_count
    votes = Vote.where(question_id: @question.id)
    vote_count = 0
    votes.each do |v|
      if v.vote
        vote_count += 1
      else
        vote_count -= 1
      end
      vote_count
    end
end

end
