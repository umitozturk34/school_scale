class FormInitController < ApplicationController

  def index

    @number = params[:number]
    @code = params[:code]
    if @number.present?
      @student = Student.where(["number = ? and code = ?", @number, @code])
      # check if student exist
      if @student.present?
        flash.now[:notice] = 'Student Found!'
        session[:code] = @code
        # session create
        if session[:code].present?
          flash.now[:notice2] = 'session created'
          redirect_to new_form_path
        end
      else
        flash.now[:notice2] = 'Student doesn\'t match!'
      end
    end
  end

end
