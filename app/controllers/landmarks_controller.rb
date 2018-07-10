class LandmarksController < ApplicationController

  get '/landmarks' do
    erb :'/landmarks/index'
  end

  get '/landmarks/new' do
      erb :'/landmarks/new'
  end

  post '/landmarks' do
    binding.pry
    @landmark = Landmark.create(name: params["landmark"]["name"], year_completed: params["landmark"]["year_completed"])
    "Successfully created a New Landmark"
  end

end
