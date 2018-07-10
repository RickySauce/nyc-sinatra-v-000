class FiguresController < ApplicationController

  get '/figures/new' do
      erb :'/figures/new'
  end

  post '/figures' do
    @figure = Figure.create(name: params["figure"]["name"])
    if !params["title"]["name"].empty?
      @title = Title.create(name: params["title"]["name"])
      @figure.titles << @title
    end
    @title_ids = params["figure"]["title_ids"]
    @title_ids.each {|id| @figure.titles << Title.find_by_id(id)} unless @title_ids.nil?
    binding.pry
  end

end
