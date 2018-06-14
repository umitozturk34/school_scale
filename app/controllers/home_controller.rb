class HomeController < ApplicationController

  def new
    @student = Student.new
  end
end
