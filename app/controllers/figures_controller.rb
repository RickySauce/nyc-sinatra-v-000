class FiguresController < ApplicationController

  get '/figures/new' do
      erb :'/figures/new'
  end

  post '/figures' do
    binding.pry
  end

end
