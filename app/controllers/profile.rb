get '/profiles/:id' do
  # @users = User.all
  @users = User.
  p @users
  erb :profile
end
