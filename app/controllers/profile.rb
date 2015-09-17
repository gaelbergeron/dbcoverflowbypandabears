get '/profiles/:id' do
  # @users = User.all
  @user = User.find(params[:id])
  erb :profile
end
