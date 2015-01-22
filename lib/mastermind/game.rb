module Mastermind
  class Game
    def initialize(input)
      @code_maker = input.fetch(:code_maker)
      @code_breaker = input.fetch(:code_breaker)
    end

    def play
      turns = 1
      code_to_guess = @code_maker.make_code
      solicit_move
      loop do
        code_to_try = @code_breaker.get_code
        if code_to_try == code_to_guess
          puts "Congratulations! You've broke the code."
          break
        elsif turns == 12
          puts "You've failed. The correct code is #{code_to_guess}."
          break
        else
          feedback = compare_codes(code_to_guess, code_to_try)
          puts "match: #{feedback[:match]}, almost: #{feedback[:almost]}"
          puts '-------------------'
          turns += 1
        end
      end
    end

    def solicit_move
      puts "#{@code_breaker.name}, try guessing the code in 12 turns. "\
           'Enter 4 digits between 1 and 8.'
    end

    def compare_codes(code1_original, code2_original)
      result = { match: 0, almost: 0 }

      code1 = code1_original.clone # to prevent changing original strings
      code2 = code2_original.clone

      code2.split('').each_with_index do |e, i|
        if e == code1[i]
          result[:match] += 1
          code1[i] = 'X' # mark for erase
          code2[i] = 'X'
        else
          next
        end
      end

      code1.gsub!('X', '') # erase
      code2.gsub!('X', '')

      code1.split('').each { |e| result[:almost] += 1 if code2.include?(e) }
      result
    end
  end
end
