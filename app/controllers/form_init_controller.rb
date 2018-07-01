class FormInitController < ApplicationController

  def index

    @number = params[:number]
    @code = params[:code]
    if @number.present?
      @student = Student.where(["number = ? and code = ?", @number, @code])
      # check if student exist
      if @student.present?

        @form = Form.where(["student_id =?", @student.ids])
        if @form.present?
          redirect_to '/form/message'
        else
          flash.now[:notice] = 'Student Found!'
          session[:code] = @code
          session[:student_id] = @student.ids

          def current_student
            return unless session[:student_id]
            @current_user ||= User.find(session[:student_id])
          end

          # session create
          if session[:code].present?
            redirect_to new_form_path
          end
        end

      else
        flash.now[:notice] = 'Opppss.. Öğrenci kaydı bulunamadı.'
      end
    end
  end

end
