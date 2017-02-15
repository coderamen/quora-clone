
class QuestionVote < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
end

#validates_uniqueness_of
