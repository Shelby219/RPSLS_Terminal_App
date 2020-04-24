# frozen_string_literal: true

require 'test/unit'
require_relative '../computer_player.rb'

class ComputerPlayerTest < Test::Unit::TestCase
  def test_computer_sample_weapon
    assert_include(Weapons::COMPUTER_CHOICES, :ROCK, message = nil)
  end

  def test_; end
end
