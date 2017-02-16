
class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers

  def vote_count
      votes = QuestionVote.where(question_id: self.id)
      vote_count = 0
      votes.each do |v|
        if v.vote
          vote_count += 1
        else
          vote_count -= 1
        end
      end
      vote_count
  end

end
