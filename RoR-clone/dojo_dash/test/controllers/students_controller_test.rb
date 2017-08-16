require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  test "should get student_page" do
    get :student_page
    assert_response :success
  end

end
