
class QuestionVote < ActiveRecord::Base
validates_uniqueness_of :user_id, :question_id
  belongs_to :user
  belongs_to :question
end

#validates_uniqueness_of
