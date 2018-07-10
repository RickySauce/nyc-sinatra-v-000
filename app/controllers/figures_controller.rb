class FiguresController < ApplicationController

  get '/figures/new' do
      erb :'/figures/new'
  end

  post '/figures' do
    binding.pry
    @figure = Figure.create(name: params["figure"]["name"])
    if !params["title"]["name"].empty?
      @title = Title.create(name: params["title"]["name"])
      @figure.title_ids << @title.id
      binding.pry
    end
    binding.pry
  end

end
