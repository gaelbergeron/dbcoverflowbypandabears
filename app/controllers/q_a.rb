get '/questions/:question_id' do
  @question =  Question.find(params[:question_id])
  @answers = Answer.all
  erb :'q_a'
end

