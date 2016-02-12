
get '/users/index' do

  # redirect :'/users/:user_id/followeds/tweets'
  redirect '/users/1/followeds/tweets'
end

get '/users/:id' do #User has a profile page
  @user = User.find(params[:id])
  erb :'users/profile'
end

get '/users/:user_id/followeds/tweets' do
  @user = User.find(params[:user_id])
  # @followeds = @user.followeds #MAY BE DIFFERENT NAME
  # @recent_tweets = []
  # @followeds.each do |followed|
  #   @recent_tweets << followed.tweets
  # end
  # @recent_tweets.flatten
  # @recent_tweets.sort_by {|x, y| x.created_at <=> y.created_at}
  @recent_tweets = Tweet.all #temporary until association is setup

  erb :'users/index'
end
