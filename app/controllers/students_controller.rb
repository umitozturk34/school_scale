class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
    @code = SecureRandom.base58(12)
  end

  def create
    @student = Student.new(student_params)


    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:name, :surname, :number, :email, :code)
  end

end
