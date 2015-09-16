#home page
get '/' do
  redirect "/users"
end

get '/users' do
  erb :index
end

#login page
get '/users/login' do
	erb :login
end

#authentication after login
post '/users' do
	# redirect "/dummy_profile"
	# redirect "/users/"#{id}"/profile
end





#new user page
get '/users/new' do
	erb :new
end

#create new user to db and go to session
post '/users' do
	user = User.new(params)
	if user.save
		session[:user_id] = user.id
		print "GOOD JOB *" * 20
		redirect "/dummy_profile"
	else
		print "WRONG WAY *" * 20
	end
	# redirect "/users/"#{id}"/profile
end

#logout 
get '/users/logout' do
end

get '/dummy_profile' do
	erb :dummy_profile
end
