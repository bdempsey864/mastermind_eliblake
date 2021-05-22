require 'colorize'
require './messages'
require './player'
require './code'

class Game 
    attr_reader :player,
                :message
    def initialize
        puts "WELCOME".yellow + " " + "TO".red + " " + "MASTER".green + " " + "MIND".blue
        puts " "
        @message = Message.new
        @player = Player.new 
    end

    def start
        code = Code.new
        code.make_secret_code
        require "pry"; binding.pry
        puts @message.game_intro
        intro_message
    end

    def intro_message
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
            play_game
        end
    end

    def play_game
       @player.guess_code
        puts @message.guess_message #(
                #    @guessed_code,           correct_amount_of_elements, number_in_correct_position, number_of_guesses) 
    end

end
