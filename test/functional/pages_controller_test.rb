require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  def test_show
    get :show, :id => Page.first
    assert_template 'show'
  end

  def test_index
    get :index
    assert_template 'index'
  end
end
