require 'sinatra/base'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base
    get '/hello-world' do
      @random_numbers = [1..20]
      erb :hello
    end

    get '/artists' do
      @artists = "Larry, Curly, and Moe"
      erb :artists
    end
  end
end