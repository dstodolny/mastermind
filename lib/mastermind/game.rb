module Mastermind
  class Game
    def initialize(input)
      @code_maker = input.fetch(:code_maker)
      @code_breaker = input.fetch(:code_breaker)
    end

    def play
      turns = 0
      code_to_guess = "1122" # @code_maker.make_code
      solicit_move
      feedback = compare_codes(code_to_guess, @code_breaker.get_code)
      puts feedback
    end

    def solicit_move
      puts "#{@code_breaker.name}, try guessing the code. "\
           'Enter 4 digits between 1 and 8.'
    end

    def compare_codes(code1, code2)
      result = { match: 0, almost: 0 }
      
      code2.split('').each_with_index do |e, i|
        if e == code1[i]
          result[:match] += 1
          code1[i] = 'X' # mark for erase
          code2[i] = 'X' # mark for erase
        else
          next
        end
      end

      code1.gsub!('X', '') # erase
      code2.gsub!('X', '') # erase

      code2.split('').each { |e| result[:almost] += 1 if code1.include?(e) }
      result
    end
  end
end
