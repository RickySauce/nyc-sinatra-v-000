class FiguresController < ApplicationController

  get '/figures/new' do
      erb :'/figures/new'
  end

  post '/figures' do
    @figure = Figure.create(name: params["figure"]["name"])
    if !params["title"]["name"].empty?
      @title = Title.create(name: params["title"]["name"])
      @figure.titles << @title
      binding.pry
    end
    binding.pry
  end

end
