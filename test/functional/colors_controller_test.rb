require 'test_helper'

class ColorsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Color.first
    assert_template 'show'
  end
end
