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
        @start_time = Time.now
    end

    def start
        @code.make_secret_code
        puts @message.game_intro
        game_menu
    end

    def game_input
        gets.chomp.downcase
    end

    def game_menu # fixed
        play = game_input
        if play == "r"
            puts @message.instructions
            puts @message.game_intro
            game_menu
        elsif play == "q"
            puts @message.quit_message
        elsif play == "c"
            puts "The secret code is " + "#{@code.secret_code}".red
            puts @message.game_intro
            game_menu
        elsif play == "p"
            puts @message.play_message
            play_game
        else
            puts @message.intro_bad_choice
            game_menu
        end
    end
    
    def game_won?
        @player.guessed_code == @code.secret_code
    end
    
    def game_lost?
        @lives == 0
    end

    def reset
        @code.secret_code.clear
        @lives = 10
        @start_time = Time.now
        start
    end

    def continue_game
        @player.guessed_code.clear
        puts @message.continue_message
    end

    def standard_moves
        until game_lost? || game_won?
            @player.guessed_code.clear
            player_turn = @player.guess_code
            if player_turn == ["q"]
                puts @message.quit_message
            elsif player_turn == ["r"] 
                puts @message.instructions
                continue_game
            elsif player_turn == ["c"]
                puts "The secret code is #{@code.secret_code}"
                continue_game
            elsif player_turn.length != 4
                puts @message.incorrect_color
                play_game
            else
                @lives -= 1
                if @lives > 0
                        puts @message.guess_message(@player.guessed_code, 
                                                    @player.correct_amount_of_elements(@code.secret_code), 
                                                    @player.number_in_correct_position(@code.secret_code), 
                                                    @lives)
        
                play_game  
                end
            end 

        end
    end 
    
    def time_played
        end_time = Time.now
        (end_time - @start_time).to_i.divmod(60)
    end

    def play_game
        standard_moves
        if game_won?
            puts @message.win_message(@code.secret_code, @lives, time_played[0], time_played[1])
        else # game_lost?
            puts @message.game_over(time_played[0], time_played[1])
        end
        reset   
    end
    
end
