get '/' do
  if logged_in?
    @questions = Question.order("created_at desc")
    @answers = Answer.order("created_at desc").limit(3)

    erb :"static/home"
  else
    erb :"static/index"
  end
end

# Get /  is to fetch info from the db to the user.view
# Post / is to go to the db and make some changes & display the changed info for the user.
