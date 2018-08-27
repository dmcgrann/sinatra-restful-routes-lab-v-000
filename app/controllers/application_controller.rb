class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    erb :index
  end
  
  get '/recipes/new' do
    erb :new
  end
  
  post 'recipes' do
    @recipes = Recipe.new(:name => params[:name], :ingredients => params[:ingredients],  )
  
end