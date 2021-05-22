require 'colorize'
require './messages'
require "./player"
require './code'

class Game 
    def initialize
        puts "WELCOME".yellow + " " + "TO".red + " " + "MASTER".green + " " + "MIND".blue
        puts " "
        @message = Message.new
    end

    def start
        code = Code.new
        code.make_secret_code
        puts @message.game_intro
        play_game 
    end

    def play_game
        play = gets.chomp.downcase
        until play ==  "p" || play == "r" || play == "q"
            puts @message.intro_bad_choice
            break
            play = gets.chomp.downcase 
        end
        if play == "r"
            puts @message.instructions
        elsif play == "q"
            puts @message.quit_message
        else 
            puts @message.play_message
            #method to play game
        end
    end




    # def read
    #     read = gets.chomp.downcase
    #     play == "r" || "read"
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
game = Game.new
game.start