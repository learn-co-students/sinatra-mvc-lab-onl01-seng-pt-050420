require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @pig_latin = PigLatinizer.new
        @pig_latin = @pig_latin.piglatinize(params[:user_phrase])
        @pig_latin
        erb :pig_latin
    end
end
