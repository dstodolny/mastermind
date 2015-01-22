module Mastermind
  class Player
    attr_accessor :code
    attr_reader :name, :guess_log

    def initialize(name)
      @name = name
      @guess_log = []
    end

    def make_code
      puts "Choose your secret code."
      @code = get_code
    end

    def get_code
      loop do
        code = gets.chomp
        if wrong_size?(code)
          puts 'You can only use 4-digit code. Try again.'
        elsif outside_range?(code)
          puts 'You can only use numbers from 1 to 8. Try again.'
        else
          return code
        end
      end
    end

    def log(code, feedback)
      guess_log << [code, feedback]
    end

    private

    def wrong_size?(code)
      code.size != 4
    end

    def outside_range?(code)
      code.split('').any? { |e| !e.to_i.between?(1, 8) }
    end
  end
end
