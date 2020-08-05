require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/pig-latin' do
    @new_text = PigLatinizer.new(params[:user_text])
    puts @new_text
    erb :results
  end
end