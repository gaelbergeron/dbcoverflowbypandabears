#create a new question
get '/questions/new' do
	erb :'new_question_answer'
end

#save new question to db
post '/questions' do
	question = Question.new(params)
	question.save 
	redirect "#SEND TO SOME PAGE"
end 

#create a new answer 
get '/answers/new' do
	erb :'new_question_answer'
end

#save new answer to db 
post '/answers' do
	answer = Answer.new(params)
	answer.save
	redirct "#SEND TO SOME PAGE"
end


post '/users' do
	user = User.new(params)
	if user.save
		session[:user_id] = user.id
    redirect "/profiles/#{user.id}" 
	else
		redirect "/users"
	end
end