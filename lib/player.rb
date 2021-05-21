class Player
    attr_reader :guessed_code, :secret_code
    def initialize
        @secret_code = ["g", "r", "y", "g"]
        @guessed_code = []
    end

    def guess_code
        guess = gets.chomp
        #chars seperates into array
        guess.chars.each do |letter|
            @guessed_code << letter
        end
    end

    def win?
        @guessed_code == @secret_code
    end

    def correct_amount_of_elements
        correct = 0
        #reads top to bottom, still a couple bugs
        @secret_code.each do |color2|        # ["g", "r", "y", "g"]
            @guessed_code.each do |color1|   # ["b", "r", "y", "g"]
                if color1 == color2
                    correct += 1
                    break
                end
            end
        end
        return correct
    end

    def number_in_correct_position
       correct = 0
       if @guessed_code[0] == @secret_code[0]
        correct += 1
       end
       if @guessed_code[1] == @secret_code[1]
        correct += 1
       end
       if @guessed_code[2] == @secret_code[2]
        correct += 1
       end
       if @guessed_code[3] == @secret_code[3]
        correct += 1
       end
       return correct
    end
end

player = Player.new
player.guess_code
require "pry"; binding.pry