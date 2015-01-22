module Mastermind
  class AI < Player
    attr_accessor :numbers_left, :code_numbers

    def initialize(name)
      super
      @numbers_left = ("1".."8").to_a # digits left to try
      @code_numbers = [] # matched digits
    end

    def make_code
      @code = random_code
    end

    def get_code
      return (1 + rand(8)).to_s * 4 if guess_log.empty?

      last_try = guess_log.last[0]
      match = guess_log.last[1][:match]

      if last_try.split('').all_same?
        match.times { code_numbers.push(last_try[0]) }
        numbers_left.delete(last_try[0])
      end

      return code_numbers.size < 4 ? numbers_left.sample * 4 : code_numbers.shuffle.join
    end

    private

    def random_code(numbers = [1, 2, 3, 4, 5, 6, 7, 8])
      code = []
      4.times do 
        code << numbers.sample
      end
      code.join
    end
  end
end
