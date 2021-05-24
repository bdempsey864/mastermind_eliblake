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
        @lives = 10
    end

    def start 
        @code.make_secret_code
        require "pry"; binding.pry
        puts @message.game_intro
        intro_message
    end

    def game_input
        gets.chomp.downcase
    end

    def intro_message
        play = game_input
        until play ==  "p" || play == "r" || play == "q"
            puts @message.intro_bad_choice
            break
            play = gets.chomp.downcase 
        end
        if play == "r"
            puts @message.instructions
            play_game
        elsif play == "q"
            puts @message.quit_message
        else 
            puts @message.play_message
            play_game
        end
    end

    def play_game
        start_time = Time.now
        if @lives > 0
                if @player.guess_code.length != 4
                    if game_input == "r"
                        puts @message.instructions
                    # elsif game_input == "c"
                    #     puts "The secret code is #{@code.secret_code}"
                    # elsif game_input == "q"
                    #     puts @message.quit_message
                    else  
                        puts @message.incorrect_color
                        @player.guessed_code.clear 
                        play_game
                    end
                elsif @player.guessed_code == @code.secret_code
                            end_time = Time.now
                            @time_played = (end_time - start_time).to_i.divmod(60)
                            puts @message.win_message(@code.secret_code, 
                                              @lives, @time_played[0], 
                                              @time_played[1])
                else @lives -= 1
                    puts @message.guess_message(@player.guessed_code, 
                                                @player.correct_amount_of_elements(@code.secret_code), 
                                                @player.number_in_correct_position(@code.secret_code), 
                                                @lives)
                    @player.guessed_code.clear
                    play_game
                end 
        else
            end_time = Time.now
            @time_played = (end_time - start_time).to_i.divmod(60)
            puts @message.game_over( @time_played[0], 
                                     @time_played[1] )
        end   
    end
    
end
