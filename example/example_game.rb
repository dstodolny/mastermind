require_relative '../lib/mastermind.rb'

puts 'Welcome to mastermind'
bob = Mastermind::AI.new('bob')
frank = Mastermind::Player.new('frank')

Mastermind::Game.new(code_breaker: bob, code_maker: frank).play
