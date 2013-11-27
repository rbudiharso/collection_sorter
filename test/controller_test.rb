require 'test_helper'

class ControllerTest < ActionController::TestCase
  def setup
    @controller = HomeController.new
  end

  test "included in ActionController" do
    assert @controller.class.respond_to?:sort_with
  end

  test "GET index" do
    get 'index'
    assert_equal 200, response.status
  end
end
