class LandmarksController < ApplicationController

  get '/landmarks' do
    erb :'/landmarks/index'
  end

  get '/landmarks/new' do
      erb :'/landmarks/new'
  end

  post '/landmarks' do 
    binding.pry
    @landmark = Landmark.create(name: params["name"], year_completed: params["year_completed"])
    "Successfully created a New Landmark"
  end

end
