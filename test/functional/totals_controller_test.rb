require 'test_helper'

class TotalsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Total.first
    assert_template 'show'
  end
end
