get '/' do
  @questions = Question.all
  @user = User.find(session[:user_id])
  erb :index
end
