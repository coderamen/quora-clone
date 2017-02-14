get '/' do
  erb :"static/index"
end





# Get /  is to fetch info from the db to the user.view
# Post / is to go to the db and make some changes & display the changed info for the user.
