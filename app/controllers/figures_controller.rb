class FiguresController < ApplicationController

  get '/figures/new' do
      erb :'/figures/new'
  end

  post '/figures' do
    @figure = Figure.create(name: params["figure"]["name"])
    if !params["title"]["name"].empty?
      @title = Title.find_or_create_by(name: params["title"]["name"])
    end
    @figure.title_ids  << params["figure"]["title_ids"] << @title.id
    
    binding.pry
  end

end
