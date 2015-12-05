require 'test_helper'

class FilecardsControllerTest < ActionController::TestCase
  setup do
    @filecard = filecards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filecards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filecard" do
    assert_difference('Filecard.count') do
      post :create, filecard: { answer: @filecard.answer, public: @filecard.public, question: @filecard.question, subject_id: @filecard.subject_id, submitDate: @filecard.submitDate, user_id: @filecard.user_id }
    end

    assert_redirected_to filecard_path(assigns(:filecard))
  end

  test "should show filecard" do
    get :show, id: @filecard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filecard
    assert_response :success
  end

  test "should update filecard" do
    patch :update, id: @filecard, filecard: { answer: @filecard.answer, public: @filecard.public, question: @filecard.question, subject_id: @filecard.subject_id, submitDate: @filecard.submitDate, user_id: @filecard.user_id }
    assert_redirected_to filecard_path(assigns(:filecard))
  end

  test "should destroy filecard" do
    assert_difference('Filecard.count', -1) do
      delete :destroy, id: @filecard
    end

    assert_redirected_to filecards_path
  end
end
