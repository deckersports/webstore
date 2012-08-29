require 'test_helper'

class SalesmanTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Salesman.new.valid?
  end
end
