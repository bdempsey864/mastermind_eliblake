require './lib/messages'

class Game 
    def initialize
        @message = Message.new
    end

    def start
        # code = Code.new
        # code.make_secret_code
        puts @message.game_intro
        # play = 
        # read =
        # quit = 
    end

    def play
        play = gets.chomp.downcase
        if play == "p" || "play"
        else 
            puts @messages.intro_bad_choice
        end
    end

    def read
        read = gets.chomp.downcase
        if read == "r" || "read"
            puts @messages.instructions
        else 
            puts @messages.intro_bad_choice
        end

end