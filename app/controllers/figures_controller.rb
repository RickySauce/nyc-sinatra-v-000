class FiguresController < ApplicationController

  get '/figures/new' do
      erb :'/figures/new'
  end

  post '/figures' do
    @figure = Figure.create(name: params["figure"]["name"])
    if !params["title"]["name"].empty?
      @title = Title.find_or_create_by(name: params["title"]["name"])
    end
     @title_ids = params["figure"]["title_ids"] << @title.id
     @title_ids.each {|id| @figure.title_ids << id}
     @figure.save
    binding.pry
  end

end
