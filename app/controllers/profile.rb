get '/profiles/:user_id' do
  @user = User.find(params[:id])
  erb :profile
end
