get '/users/new' do
  erb :"static/signup"

end

post '/users' do
  user = User.new(email: params[:email], user_name: params[:user_name], password: params[:password])
  if user.save
    redirect "/users/success"
  else
    erb :"static/signup"
  end
end

get '/users/success' do
  erb :"static/success"
end
