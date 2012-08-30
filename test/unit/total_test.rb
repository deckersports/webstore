require 'test_helper'

class TotalTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Total.new.valid?
  end
end
