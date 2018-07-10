class FiguresController < ApplicationController

  get '/figures/new' do
      erb :'/figures/new'
  end

  post '/figures' do
    binding.pry
    @figure = Figure.create(name: params["figure"]["name"])
    if !params["title"]["name"].empty?
      @title = Title.create(name: params["title"]["name"])
    end
     @title_ids = params["figure"]["title_ids"] << @title.id if !@title.nil?
     @title_ids.each {|id| @figure.title_ids << id}
     @figure.save
    binding.pry
  end

end
