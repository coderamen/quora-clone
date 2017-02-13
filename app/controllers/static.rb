get '/' do
  erb :"static/index"
end

get '/signup' do
  erb :"static/signup"
  # user = User.new(params[:user])
  # if user.save
  #   redirect "/su"
  # else
  #   # what should happen if the user keyed in invalid date?
  # end
end

post '/signup' do
  user = User.new(email: params[:email], user_name: params[:user_name], password: params[:password])
  if user.save
    redirect "/signup/success"
  else
    erb :"static/signup"
  end
end

get '/signup/success' do
  erb :"static/success"
end

post '/signin' do
  user = User.find_by(email: params[:email])
  if user.authenticate(params[:password])
    session[:user_id] = user.id
    erb :"static/home"
  else
    'invalid login'
  end
end
