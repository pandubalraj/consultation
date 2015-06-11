require 'test_helper'

class ConsultationsControllerTest < ActionController::TestCase
  setup do
    @consultation = consultations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consultations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consultation" do
    assert_difference('Consultation.count') do
      post :create, consultation: { alt_diagnosis: @consultation.alt_diagnosis, current_compliant: @consultation.current_compliant, current_medication: @consultation.current_medication, date: @consultation.date, imp_pat_info: @consultation.imp_pat_info, init_diagnosis: @consultation.init_diagnosis, next_consult_date: @consultation.next_consult_date, patient_id: @consultation.patient_id, patient_name: @consultation.patient_name, remarks: @consultation.remarks, sittings: @consultation.sittings }
    end

    assert_redirected_to consultation_path(assigns(:consultation))
  end

  test "should show consultation" do
    get :show, id: @consultation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consultation
    assert_response :success
  end

  test "should update consultation" do
    patch :update, id: @consultation, consultation: { alt_diagnosis: @consultation.alt_diagnosis, current_compliant: @consultation.current_compliant, current_medication: @consultation.current_medication, date: @consultation.date, imp_pat_info: @consultation.imp_pat_info, init_diagnosis: @consultation.init_diagnosis, next_consult_date: @consultation.next_consult_date, patient_id: @consultation.patient_id, patient_name: @consultation.patient_name, remarks: @consultation.remarks, sittings: @consultation.sittings }
    assert_redirected_to consultation_path(assigns(:consultation))
  end

  test "should destroy consultation" do
    assert_difference('Consultation.count', -1) do
      delete :destroy, id: @consultation
    end

    assert_redirected_to consultations_path
  end
end
