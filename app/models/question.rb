
class Question < ActiveRecord::Base
    belongs_to :user
    has_many :answers

    # def vote_count
    #     votes = QuestionVote.where(question_id: id)
    #     vote_count = 0
    #     votes.each do |v|
    #         if v.vote
    #             vote_count += 1
    #         else
    #             vote_count -= 1
    #         end
    #     end
    #     vote_count
    # end

    def upvotes(id)
        QuestionVote.where(question_id: id, vote: true).count
    end

    def downvotes(id)
        QuestionVote.where(question_id: id, vote: false).count
    end
end
