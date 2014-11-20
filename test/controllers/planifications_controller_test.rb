require 'test_helper'

class PlanificationsControllerTest < ActionController::TestCase
  setup do
    @planification = planifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planification" do
    assert_difference('Planification.count') do
      post :create, planification: { activ: @planification.activ, classroom_id: @planification.classroom_id, contents: @planification.contents, expect_learn: @planification.expect_learn, obj_fund_transv: @planification.obj_fund_transv, obj_fund_vert: @planification.obj_fund_vert, program_id: @planification.program_id, subject: @planification.subject, teach_time: @planification.teach_time, user_id: @planification.user_id }
    end

    assert_redirected_to planification_path(assigns(:planification))
  end

  test "should show planification" do
    get :show, id: @planification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planification
    assert_response :success
  end

  test "should update planification" do
    patch :update, id: @planification, planification: { activ: @planification.activ, classroom_id: @planification.classroom_id, contents: @planification.contents, expect_learn: @planification.expect_learn, obj_fund_transv: @planification.obj_fund_transv, obj_fund_vert: @planification.obj_fund_vert, program_id: @planification.program_id, subject: @planification.subject, teach_time: @planification.teach_time, user_id: @planification.user_id }
    assert_redirected_to planification_path(assigns(:planification))
  end

  test "should destroy planification" do
    assert_difference('Planification.count', -1) do
      delete :destroy, id: @planification
    end

    assert_redirected_to planifications_path
  end
end
