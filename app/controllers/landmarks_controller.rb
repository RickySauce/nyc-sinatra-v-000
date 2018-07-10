class LandmarksController < ApplicationController

  get '/landmarks' do
    erb :'/landmarks/index'
  end

  get '/landmarks/new' do
      erb :'/landmarks/new'
  end

  post '/landmarks' do
    @landmark = Landmark.create(name: params["landmark"]["name"], year_completed: params["landmark"]["year_completed"])
    "Successfully created a New Landmark"
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find_by_id(params["id"])
    erb :'/landmarks/show'
  end

end
