#home page
get '/' do
  erb :index
end

#login page
get '/users/login' do
	erb :login
end

#authentication after login
post '/users/create' do
	#logic for authentication
		redirect "/dummy_profile"
	# redirect "/users/"#{id}"/profile
end

#new user page
get '/users/new' do
	erb :new
end

#create new user to db 
post '/users/new' do
		redirect "/dummy_profile"
	# redirect "/users/"#{id}"/profile
end

#logout 
get '/users/logout' do
end

get '/dummy_profile' do
	erb :dummy_profile
end
