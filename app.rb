require_relative 'config/environment.rb'
require_relative 'models/piglatinizer.rb'


class App < Sinatra::Base

 get '/' do
   erb :user_input
 end

 post '/piglatinize' do

   user_word = params[:user_phrase]
   word = PigLatinizer.new
  @user_phrase = word.piglatinize(user_word)
  # binding.pry
   erb :piglatinize
 end

 get '/piglatinize' do
   erb :piglatinize
 end

end
