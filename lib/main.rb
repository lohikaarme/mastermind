# frozen_string_literal: true

# mastermind exercise to replicate the classic game

require_relative 'game'
require_relative 'board'
require_relative 'player'
require_relative 'ai'
require_relative 'render'

def game_start
  game = Game_Logic.new
  game.play while game.game
  # logic to play_again
end

def play_again
  # get prompt
end

# RD = Red

# BU = Blue
# YW = Yellow
# GN = Green
# WH = White
# BK = Black

game_start
