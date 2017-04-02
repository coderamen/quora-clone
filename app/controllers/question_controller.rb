get '/questions' do
  @questions = question.all
  erb :"questions"
end

post '/questions' do
  question = Question.new(text: params[:user_input], user_id: current_user.id)
  question.save
  redirect '/'
end
