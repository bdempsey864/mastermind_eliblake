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
        guess_count = 0
        until @player.win?(@code.secret_code) || guess_count == 10
            if @player.guess_code.length != 4
                puts @message.incorrect_color
                @player.guessed_code.clear
            else 
                guess_count += 1
                puts @message.guess_message(@player.guessed_code, @player.correct_amount_of_elements(@code.secret_code), @player.number_in_correct_position(@code.secret_code), guess_count)
                @player.guessed_code.clear
            end 
            if @player.win?
                puts @message.
        end  
    end

end
