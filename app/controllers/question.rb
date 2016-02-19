get '/questions' do
  @questions = Question.all
  erb :"index"
end

get '/questions/:id' do
  @question = Question.find(params[:id])

  erb :'questions/question'
end

get '/users/:id/questions/new' do

  erb :"/questions/new"
end

post '/users/:id/questions' do
  @question = Question.create(user_id: params[:id], title: params[:title], body: params[:body])
  p @question
 redirect "/users/#{params[:id]}"
 # erb :"/questions/new"

end

post "/questions/:id/votes/new" do
  @question = Question.find(params[:id])

  vote = Vote.create(votable_id: params[:id], votable_type: 'Question', up_vote: params[:up])

  redirect "/questions/#{@question.id}"
end

post "/questions/:id/answers/:answer_id/votes/new" do
  answer = Answer.find(params[:answer_id])

  vote = Vote.create(votable_id: params[:answer_id], votable_type: 'Answer', up_vote: params[:up])

  redirect "/questions/#{params[:id]}"

end
