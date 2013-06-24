require 'sinatra/base'
require_relative 'student.rb'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base

    get '/students' do
      @students = Student.all
      erb :'students/index'
    end

    # get '/hello-world' do
    #   @random_numbers = (1..20).to_a
    #   erb :hello
    # end

    # get '/artists' do
    #   @artists = "Larry, Curly, and Moe"
    #   erb :artists
    # end
  end
end