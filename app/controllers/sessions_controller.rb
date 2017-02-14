post '/sessions' do #sign in / direct to action
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    erb :"static/home" # direct to html erb
  else
    @invalid_login = 'No account found for this email.'
    erb :'static/index'
  end
end

post '/sessions/' do #sign out
  session[:id] = nil
  erb :"static/index"
end
