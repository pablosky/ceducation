require 'test_helper'

class LessonsControllerTest < ActionController::TestCase
  setup do
    @lesson = lessons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lessons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson" do
    assert_difference('Lesson.count') do
      post :create, lesson: { answer: @lesson.answer, category: @lesson.category, content: @lesson.content, distract1: @lesson.distract1, distract2: @lesson.distract2, distract3: @lesson.distract3, photo: @lesson.photo, question: @lesson.question, tags: @lesson.tags, word_id: @lesson.word_id }
    end

    assert_redirected_to lesson_path(assigns(:lesson))
  end

  test "should show lesson" do
    get :show, id: @lesson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson
    assert_response :success
  end

  test "should update lesson" do
    patch :update, id: @lesson, lesson: { answer: @lesson.answer, category: @lesson.category, content: @lesson.content, distract1: @lesson.distract1, distract2: @lesson.distract2, distract3: @lesson.distract3, photo: @lesson.photo, question: @lesson.question, tags: @lesson.tags, word_id: @lesson.word_id }
    assert_redirected_to lesson_path(assigns(:lesson))
  end

  test "should destroy lesson" do
    assert_difference('Lesson.count', -1) do
      delete :destroy, id: @lesson
    end

    assert_redirected_to lessons_path
  end
end
