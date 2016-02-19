get '/questions' do

  @questions = Question.all
  erb :"index"
end

get '/questions/:id' do
  @question = Question.find(params[:id])

  erb :question
end


get '/user/:id/questions/new' do
  erb :"questions/new"

end

post '/user/:id/questions/new' do
  "Hello World"
end
