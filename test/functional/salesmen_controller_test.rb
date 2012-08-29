require 'test_helper'

class SalesmenControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Salesman.first
    assert_template 'show'
  end
end
