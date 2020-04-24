# frozen_string_literal: true

require_relative 'weapons.rb'
require_relative 'rules_engine.rb'

class ComputerPlayer
  include Weapons
  include RulesEngine

  def initialize
    @computer_name
  end

  def move_shuffle
    computer = Weapons::COMPUTER_CHOICES.sample # .to_s.downcase
  end
end

ComputerPlayer.new.move_shuffle
