require_relative '../lib/mastermind.rb'

puts 'Welcome to mastermind'
ai = Mastermind::AI.new('ai')
human = Mastermind::Player.new('human')

Mastermind::Game.new(code_breaker: human, code_maker: ai).play
