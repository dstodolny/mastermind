module Mastermind
  class Game
    def initialize(input)
      @code_maker = input.fetch(:code_maker)
      @code_breaker = input.fetch(:code_breaker)
    end

    def play
      turns = 0
      code_to_guess = @code_maker.make_code
      solicit_move
    end

    def solicit_move
      puts "#{@code_breaker.name}, try guessing the code. "\
           "Enter 4 digits between 1 and 8."
    end
  end
end
