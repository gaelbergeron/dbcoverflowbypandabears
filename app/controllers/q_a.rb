get '/questions/:question_id' do
  @question =  Question.find(params[:question_id])
  @answers = Answer.all
  erb :'question_page'
end

get '/questions/:question_id/vote' do
  question = Question.find(params[:question_id])
  question.votes.create({votable_id: votes[votable_id]+1, votable_type: "question"})
  question.
end

