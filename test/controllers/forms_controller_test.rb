require 'test_helper'

class FormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form = forms(:one)
  end

  test "should get index" do
    get forms_url
    assert_response :success
  end

  test "should get new" do
    get new_form_url
    assert_response :success
  end

  test "should create form" do
    assert_difference('Form.count') do
      post forms_url, params: { form: { address: @form.address, age: @form.age, classroom: @form.classroom, father_age: @form.father_age, father_education: @form.father_education, gender: @form.gender, internet_usage: @form.internet_usage, mother_age: @form.mother_age, mother_education: @form.mother_education, parent_status: @form.parent_status, q1: @form.q1, q10: @form.q10, q11: @form.q11, q12: @form.q12, q13: @form.q13, q14: @form.q14, q15: @form.q15, q16: @form.q16, q17: @form.q17, q18: @form.q18, q19: @form.q19, q2: @form.q2, q20: @form.q20, q21: @form.q21, q22: @form.q22, q23: @form.q23, q24: @form.q24, q25: @form.q25, q26: @form.q26, q27: @form.q27, q28: @form.q28, q29: @form.q29, q3: @form.q3, q30: @form.q30, q31: @form.q31, q32: @form.q32, q33: @form.q33, q34: @form.q34, q35: @form.q35, q36: @form.q36, q37: @form.q37, q38: @form.q38, q39: @form.q39, q4: @form.q4, q40: @form.q40, q41: @form.q41, q42: @form.q42, q43: @form.q43, q44: @form.q44, q45: @form.q45, q46: @form.q46, q47: @form.q47, q48: @form.q48, q49: @form.q49, q5: @form.q5, q50: @form.q50, q51: @form.q51, q52: @form.q52, q53: @form.q53, q54: @form.q54, q55: @form.q55, q56: @form.q56, q57: @form.q57, q58: @form.q58, q59: @form.q59, q6: @form.q6, q7: @form.q7, q8: @form.q8, q9: @form.q9, siblings: @form.siblings, transportation: @form.transportation } }
    end

    assert_redirected_to form_url(Form.last)
  end

  test "should show form" do
    get form_url(@form)
    assert_response :success
  end

  test "should get edit" do
    get edit_form_url(@form)
    assert_response :success
  end

  test "should update form" do
    patch form_url(@form), params: { form: { address: @form.address, age: @form.age, classroom: @form.classroom, father_age: @form.father_age, father_education: @form.father_education, gender: @form.gender, internet_usage: @form.internet_usage, mother_age: @form.mother_age, mother_education: @form.mother_education, parent_status: @form.parent_status, q1: @form.q1, q10: @form.q10, q11: @form.q11, q12: @form.q12, q13: @form.q13, q14: @form.q14, q15: @form.q15, q16: @form.q16, q17: @form.q17, q18: @form.q18, q19: @form.q19, q2: @form.q2, q20: @form.q20, q21: @form.q21, q22: @form.q22, q23: @form.q23, q24: @form.q24, q25: @form.q25, q26: @form.q26, q27: @form.q27, q28: @form.q28, q29: @form.q29, q3: @form.q3, q30: @form.q30, q31: @form.q31, q32: @form.q32, q33: @form.q33, q34: @form.q34, q35: @form.q35, q36: @form.q36, q37: @form.q37, q38: @form.q38, q39: @form.q39, q4: @form.q4, q40: @form.q40, q41: @form.q41, q42: @form.q42, q43: @form.q43, q44: @form.q44, q45: @form.q45, q46: @form.q46, q47: @form.q47, q48: @form.q48, q49: @form.q49, q5: @form.q5, q50: @form.q50, q51: @form.q51, q52: @form.q52, q53: @form.q53, q54: @form.q54, q55: @form.q55, q56: @form.q56, q57: @form.q57, q58: @form.q58, q59: @form.q59, q6: @form.q6, q7: @form.q7, q8: @form.q8, q9: @form.q9, siblings: @form.siblings, transportation: @form.transportation } }
    assert_redirected_to form_url(@form)
  end

  test "should destroy form" do
    assert_difference('Form.count', -1) do
      delete form_url(@form)
    end

    assert_redirected_to forms_url
  end
end
