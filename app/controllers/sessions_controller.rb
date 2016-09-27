get '/sessions/new' do
end

post '/sessions' do\
  @user = User.authenticate(params[:session])
  if @user
    session[:id] = @user.id
    redirect "/users/#{@user.id}"
  else
    redirect '/'
  end
end

delete '/sessions/:id' do
  session[:id] = nil
  redirect '/'
end
