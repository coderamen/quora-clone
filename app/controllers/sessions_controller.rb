post '/sessions' do #sign in / direct to action
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    # erb :"static/home" # direct to html erb
    redirect '/'
  else
    @invalid_login = 'No account found for this email.'
    redirect '/'
  end
end

get '/sessions/logout' do #sign out
  session.clear
  redirect '/'
end
