require 'test_helper'

class SchoolsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => School.first
    assert_template 'show'
  end
end
