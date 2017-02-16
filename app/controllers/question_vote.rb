
post '/upvotes/:q_id' do
  # question_votes = QuestionVote.new(vote:params[:up_vote], user_id: current_user.id, question_id: params[:q_id])
  question_votes = QuestionVote.new(question_id: params[:q_id], user_id: current_user.id, vote: true)
  if question_votes.save
  else
    question_votes.delete
  end
  redirect '/'
end
