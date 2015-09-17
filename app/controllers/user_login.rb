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



#new user page
get '/users/new' do
	erb :new
end

#create new user to db and go to session
post '/users' do
	user = User.new(params)
	if user.save
		session[:user_id] = user.id
		redirect "#REDIRECT TO THE PROFILE PAGE"
	# redirect "/users/"#{id}"/profile
	else
		redirect "/users/new"
	end
end

#logout 
get '/users/logout' do
end
