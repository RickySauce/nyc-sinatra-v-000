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
    if !params["landmark"]["name"].empty?
      @landmark = Landmark.create(name: params["landmark"]["name"])
      binding.pry
      @landmark.year_completed = params["landmark"]["year_completed"] unless nil?
      @figure.landmarks << @landmark
    end
    @landmark_ids = params["figure"]["landmark_ids"]
    @landmark_ids.each {|id| @figure.landmarks << Landmark.find_by_id(id)} unless @landmark_ids.nil?
    @figure.save

    "Successfully Created New Figure"
  end

end
