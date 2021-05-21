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

    # def play
    #     play = gets.chomp.downcase
    #     if play == "p" || "play"
    #     else play !=  "p" || "play"
    #         puts @message.intro_bad_choice
    #     end
    #     require "pry";binding.pry
    # end

    # def read
    #     read = gets.chomp.downcase
    #     if read == "r" || "read"
    #         puts @message.instructions
    #     else 
    #         puts @message.intro_bad_choice
    #     end
    # end

    # def quit
    #     quit = gets.chomp.downcase
    #     if quit == "q" || "quit"
    #         puts @message.quit_confirm # need to add in a hard quit
    #     else
    #         puts @message.intro_bad_choice
    #     end
    # end

end