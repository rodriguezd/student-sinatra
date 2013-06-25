require 'sinatra/base'
require_relative 'student.rb'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base

    get '/students' do
      @students = Student.all
      erb :'students/index'
    end

    get '/students/:name' do
      @student = Student.find_by_name("#{params[:name]}")
      erb :'students/student', :layout => :student_layout
    end
  end
end