get '/users/:id' do
  @user = User.find(params[:id])
  erb :testpage
end

post '/users' do
  user = User.create(params[:user])

  redirect "/users/#{user.id}"
end
