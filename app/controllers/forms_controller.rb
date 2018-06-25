class FormsController < ApplicationController
  devise_group :programme_editor, contains: %i(admin school)
  before_action :authenticate_programme_editor!

  # GET /forms
  # GET /forms.json
  def index
    if current_school.present?
      @student_id = Student.where(school_id: current_school.id)
      @forms = Form.where(student_id: @student_id)
    else
      @forms = Form.all
    end

    respond_to do |format|
      format.html
      format.csv { send_data @forms.to_csv }
    end
  end

  # GET /forms/1
  # GET /forms/1.json
  def show
    @form = Form.find(params[:id])
  end

  # GET /forms/new
  def new
    @form = Form.new
  end

  # GET /forms/1/edit
  def edit
  end

  # POST /forms
  # POST /forms.json
  def create
    @form = Form.new(form_params)

    respond_to do |format|
      if @form.save
        format.html { redirect_to forms_path, notice: 'Form was successfully created.' }
        format.json { render :show, status: :created, location: @form }
        format.csv { send_data @forms.to_csv }
      else
        format.html { render :new }
        format.json { render json: @form.errors, status: :unprocessable_entity }
        format.csv { send_data @forms.to_csv }
      end
    end
  end

  # PATCH/PUT /forms/1
  # PATCH/PUT /forms/1.json
  def update
    respond_to do |format|
      if @form.update(form_params)
        format.html { redirect_to @form, notice: 'Form was successfully updated.' }
        format.json { render :show, status: :ok, location: @form }
      else
        format.html { render :edit }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/1
  # DELETE /forms/1.json
  def destroy
    @form.destroy
    respond_to do |format|
      format.html { redirect_to forms_url, notice: 'Form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form
      @form = Form.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_params
      params.require(:form).permit(:age, :gender, :classroom, :siblings, :address, :internet_usage, :mother_education, :father_education, :parent_status, :mother_age, :father_age, :transportation, :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11, :q12, :q13, :q14, :q15, :q16, :q17, :q18, :q19, :q20, :q21, :q22, :q23, :q24, :q25, :q26, :q27, :q28, :q29, :q30, :q31, :q32, :q33, :q34, :q35, :q36, :q37, :q38, :q39, :q40, :q41, :q42, :q43, :q44, :q45, :q46, :q47, :q48, :q49, :q50, :q51, :q52, :q53, :q54, :q55, :q56, :q57, :q58, :q59)
      .merge(student_id: session[:student_id][0])
    end
end
