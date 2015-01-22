module Mastermind
  class AI < Player
    def make_code
      @code = random_code
    end

    private

    def random_code
      code = []
      4.times do 
        code << (1 + rand(8)).to_s
      end
      code.join
    end
  end
end
