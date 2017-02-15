get '/answers/:q_id' do
  # The ONE question with q_id
  @question = Question.find(params[:q_id])
  # ALL answers belonged to the question
  @answers = @question.answers
  erb :"static/answer"
end



post '/answers/:q_id' do
  answer = Answer.new(text: params[:answer_input], user_id: current_user.id, question_id: params[:q_id])
  answer.save
  redirect '/'
end
