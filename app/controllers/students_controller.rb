class StudentsController < ApplicationController
  devise_group :programme_editor, contains: %i(admin school)
  before_action :authenticate_programme_editor!

  def index
    if current_school.present?
      @students = Student.where(school_id: current_school.id)
    else
      @students = Student.all
    end
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
    params.require(:student).permit(:name, :surname, :number, :email, :code).merge(school_id: current_school.id)
  end

end
