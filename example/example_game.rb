require_relative '../lib/mastermind.rb'

puts 'Welcome to mastermind'
bob = Mastermind::AI.new('bob')
frank = Mastermind::Player.new('frank')

Mastermind::Game.new(code_maker: bob, code_breaker: frank).play
