require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        phrase = params[:user_phrase]
        latin = PigLatinizer.new
        @piglatinized = latin.piglatinize(phrase)
        erb :result
    end
end