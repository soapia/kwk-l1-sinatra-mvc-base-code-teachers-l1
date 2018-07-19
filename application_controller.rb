require './models/model.rb'
require 'bundler'
Bundler.require


class MyApp < Sinatra::Base

  get '/' do
    return erb :index
  end
  
  post '/' do
    @first_response = params[:response1]
    @second_response = params[:response2]
    @result = my_method(@first_response, @second_response)
    erb :results
  end
  
end
