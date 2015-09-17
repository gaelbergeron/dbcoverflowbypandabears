#create a new question
get '/questions/new' do
	erb :'new_question'
end

#save new question to db
post 'users/:id/questions' do
	question = Question.new(params)
	question.save 
	redirect "/"
end 

# #create a new answer 
# get '/answers/new' do
# 	erb :'new_answer'
# end

# #save new answer to db 
# post '/answers' do
# 	answer = Answer.new(params)
# 	answer.save
# 	redirect "SEND ME TO SOME PAGE"
# end


get '/questions/:question_id' do
  @questions =  Question.find(params[:question_id])
  @answers = Answer.all
  erb :'question_page'
end




