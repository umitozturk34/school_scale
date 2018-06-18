require "application_system_test_case"

class FormsTest < ApplicationSystemTestCase
  setup do
    @form = forms(:one)
  end

  test "visiting the index" do
    visit forms_url
    assert_selector "h1", text: "Forms"
  end

  test "creating a Form" do
    visit forms_url
    click_on "New Form"

    fill_in "Address", with: @form.address
    fill_in "Age", with: @form.age
    fill_in "Classroom", with: @form.classroom
    fill_in "Father Age", with: @form.father_age
    fill_in "Father Education", with: @form.father_education
    fill_in "Gender", with: @form.gender
    fill_in "Internet Usage", with: @form.internet_usage
    fill_in "Mother Age", with: @form.mother_age
    fill_in "Mother Education", with: @form.mother_education
    fill_in "Parent Status", with: @form.parent_status
    fill_in "Q1", with: @form.q1
    fill_in "Q10", with: @form.q10
    fill_in "Q11", with: @form.q11
    fill_in "Q12", with: @form.q12
    fill_in "Q13", with: @form.q13
    fill_in "Q14", with: @form.q14
    fill_in "Q15", with: @form.q15
    fill_in "Q16", with: @form.q16
    fill_in "Q17", with: @form.q17
    fill_in "Q18", with: @form.q18
    fill_in "Q19", with: @form.q19
    fill_in "Q2", with: @form.q2
    fill_in "Q20", with: @form.q20
    fill_in "Q21", with: @form.q21
    fill_in "Q22", with: @form.q22
    fill_in "Q23", with: @form.q23
    fill_in "Q24", with: @form.q24
    fill_in "Q25", with: @form.q25
    fill_in "Q26", with: @form.q26
    fill_in "Q27", with: @form.q27
    fill_in "Q28", with: @form.q28
    fill_in "Q29", with: @form.q29
    fill_in "Q3", with: @form.q3
    fill_in "Q30", with: @form.q30
    fill_in "Q31", with: @form.q31
    fill_in "Q32", with: @form.q32
    fill_in "Q33", with: @form.q33
    fill_in "Q34", with: @form.q34
    fill_in "Q35", with: @form.q35
    fill_in "Q36", with: @form.q36
    fill_in "Q37", with: @form.q37
    fill_in "Q38", with: @form.q38
    fill_in "Q39", with: @form.q39
    fill_in "Q4", with: @form.q4
    fill_in "Q40", with: @form.q40
    fill_in "Q41", with: @form.q41
    fill_in "Q42", with: @form.q42
    fill_in "Q43", with: @form.q43
    fill_in "Q44", with: @form.q44
    fill_in "Q45", with: @form.q45
    fill_in "Q46", with: @form.q46
    fill_in "Q47", with: @form.q47
    fill_in "Q48", with: @form.q48
    fill_in "Q49", with: @form.q49
    fill_in "Q5", with: @form.q5
    fill_in "Q50", with: @form.q50
    fill_in "Q51", with: @form.q51
    fill_in "Q52", with: @form.q52
    fill_in "Q53", with: @form.q53
    fill_in "Q54", with: @form.q54
    fill_in "Q55", with: @form.q55
    fill_in "Q56", with: @form.q56
    fill_in "Q57", with: @form.q57
    fill_in "Q58", with: @form.q58
    fill_in "Q59", with: @form.q59
    fill_in "Q6", with: @form.q6
    fill_in "Q7", with: @form.q7
    fill_in "Q8", with: @form.q8
    fill_in "Q9", with: @form.q9
    fill_in "Siblings", with: @form.siblings
    fill_in "Transportation", with: @form.transportation
    click_on "Create Form"

    assert_text "Form was successfully created"
    click_on "Back"
  end

  test "updating a Form" do
    visit forms_url
    click_on "Edit", match: :first

    fill_in "Address", with: @form.address
    fill_in "Age", with: @form.age
    fill_in "Classroom", with: @form.classroom
    fill_in "Father Age", with: @form.father_age
    fill_in "Father Education", with: @form.father_education
    fill_in "Gender", with: @form.gender
    fill_in "Internet Usage", with: @form.internet_usage
    fill_in "Mother Age", with: @form.mother_age
    fill_in "Mother Education", with: @form.mother_education
    fill_in "Parent Status", with: @form.parent_status
    fill_in "Q1", with: @form.q1
    fill_in "Q10", with: @form.q10
    fill_in "Q11", with: @form.q11
    fill_in "Q12", with: @form.q12
    fill_in "Q13", with: @form.q13
    fill_in "Q14", with: @form.q14
    fill_in "Q15", with: @form.q15
    fill_in "Q16", with: @form.q16
    fill_in "Q17", with: @form.q17
    fill_in "Q18", with: @form.q18
    fill_in "Q19", with: @form.q19
    fill_in "Q2", with: @form.q2
    fill_in "Q20", with: @form.q20
    fill_in "Q21", with: @form.q21
    fill_in "Q22", with: @form.q22
    fill_in "Q23", with: @form.q23
    fill_in "Q24", with: @form.q24
    fill_in "Q25", with: @form.q25
    fill_in "Q26", with: @form.q26
    fill_in "Q27", with: @form.q27
    fill_in "Q28", with: @form.q28
    fill_in "Q29", with: @form.q29
    fill_in "Q3", with: @form.q3
    fill_in "Q30", with: @form.q30
    fill_in "Q31", with: @form.q31
    fill_in "Q32", with: @form.q32
    fill_in "Q33", with: @form.q33
    fill_in "Q34", with: @form.q34
    fill_in "Q35", with: @form.q35
    fill_in "Q36", with: @form.q36
    fill_in "Q37", with: @form.q37
    fill_in "Q38", with: @form.q38
    fill_in "Q39", with: @form.q39
    fill_in "Q4", with: @form.q4
    fill_in "Q40", with: @form.q40
    fill_in "Q41", with: @form.q41
    fill_in "Q42", with: @form.q42
    fill_in "Q43", with: @form.q43
    fill_in "Q44", with: @form.q44
    fill_in "Q45", with: @form.q45
    fill_in "Q46", with: @form.q46
    fill_in "Q47", with: @form.q47
    fill_in "Q48", with: @form.q48
    fill_in "Q49", with: @form.q49
    fill_in "Q5", with: @form.q5
    fill_in "Q50", with: @form.q50
    fill_in "Q51", with: @form.q51
    fill_in "Q52", with: @form.q52
    fill_in "Q53", with: @form.q53
    fill_in "Q54", with: @form.q54
    fill_in "Q55", with: @form.q55
    fill_in "Q56", with: @form.q56
    fill_in "Q57", with: @form.q57
    fill_in "Q58", with: @form.q58
    fill_in "Q59", with: @form.q59
    fill_in "Q6", with: @form.q6
    fill_in "Q7", with: @form.q7
    fill_in "Q8", with: @form.q8
    fill_in "Q9", with: @form.q9
    fill_in "Siblings", with: @form.siblings
    fill_in "Transportation", with: @form.transportation
    click_on "Update Form"

    assert_text "Form was successfully updated"
    click_on "Back"
  end

  test "destroying a Form" do
    visit forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Form was successfully destroyed"
  end
end
