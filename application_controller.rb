require './models/model.rb'
require 'bundler'
Bundler.require


class MyApp < Sinatra::Base

#   get '/' do
#     erb :index
#   end

# end

# class ApplicationController < Sinatra::Base
  # configure do
  #   set :public_folder, 'public'
  #   set :views, 'app/views'
  # end

  get '/' do
    return erb :index
  end
  
  post '/' do
    @first_response = params[:response1]
    @second_response = params[:response2]
    @result = karliekodes(@first_response, @second_response)
    erb :results
  end
  
end
