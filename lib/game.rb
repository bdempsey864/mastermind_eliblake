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
        @code = Code.new
    end

    def start 
        @code.make_secret_code
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
        # until player.win? 
       @player.guess_code
        puts @message.guess_message(@player.guessed_code, @player.correct_amount_of_elements(@code.secret_code), @player.number_in_correct_position(@code.secret_code)) #(
            
        #    @guessed_code,           correct_amount_of_elements, number_in_correct_position, number_of_guesses) 
    end

end
