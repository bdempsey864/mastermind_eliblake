require './code'

class Player
    attr_reader :guessed_code, :secret_code
    def initialize
        @guessed_code = []
        # code = Code.new
        # code.make_secret_code
    end

    def input
        gets.chomp.downcase
    end

    def guess_code
        guess = input
        #chars seperates into array
        guess.chars.each do |letter|
            @guessed_code << letter
        end
    end

    def win?(secret_code)
        @guessed_code == secret_code
    end

    def correct_amount_of_elements(secret_code)
        correct = 0
        #reads top to bottom, still a couple bugs
        secret_code.each do |color2|
            @guessed_code.each do |color1|
                if color1 == color2
                    correct += 1
                    # color2.delete_if { |color| color == color1 }
                    break
                end
            end
        end
        return correct
    end

    def number_in_correct_position(correct_position)
       correct = 0
       if @guessed_code[0] == correct_position[0]
        correct += 1
       end
       if @guessed_code[1] == correct_position[1]
        correct += 1
       end
       if @guessed_code[2] == correct_position[2]
        correct += 1
       end
       if @guessed_code[3] == correct_position[3]
        correct += 1
       end
       return correct
    end
end
