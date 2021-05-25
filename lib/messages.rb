require 'colorize'
require './code'
require './player'

class Message

    def game_intro
        "Would you like to (p)play, (r)read the instructions, or (q)quit?"
    end

    def intro_bad_choice
        "That is not a valid choice.\nPlease choose (p)play, (r)read the instructions, or (q)quit"
    end

    def play_message
        "I have generated a beginner sequence with four elements made up of:\n" + "(r)ed".red + ", " + "(g)reen".green + ", " + "(b)lue".blue + ", " + "(y)ellow".yellow + ".\nUse (q) to quit at any time to end the game.\nWhat’s your guess?"
    end

    def quit_message
        "Thanks for playing!".cyan
    end

    def instructions
        " I have generated a beginner sequence with four elements made up of:\n" + " " + "(r)ed".red + ", " + "(g)reen".green + ", " + "(b)lue".blue + ", " + "(y)ellow".yellow + ".\n You must guess the sequence using a four character code.\n You will be given 10 lives to guess the correct code.\n"

    end

    def cheat(secret_code)
        "secret code is " + "#{secret_code}"
    end

    def incorrect_length
        "please enter a valid code (4 characters)"
    end

    def incorrect_color
        "Please enter a correct color choice using:\n" + "(r)ed".red + ", " + "(g)reen".green + ", " + "(b)lue".blue + ", " + "(y)ellow".yellow + ".\nUse (q) to quit at any time to end the game.\nWhat’s your guess?"
    end 

    def guess_message(player_guess, amount_correct, amount_correct_position, guess_count)
      #  require "pry"; binding.pry
        "#{player_guess}".magenta + " has #{amount_correct} colors correct with #{amount_correct_position} in the correct positions.\nYou have #{guess_count} lives left.\nPlease guess again:)"
    end

    def win_message(secret_code, number_of_guesses, time_start, time_end)
        "Congratulations!\nYou guessed" + " " + "#{secret_code}".blue + ", with #{number_of_guesses} lives left to live.\nYou played for #{time_start} minutes and #{time_end} seconds.\nWould you like to (p)lay again, or (q)uit?"
    end

    def game_over(time_start, time_end)
        "Unfortunately you have ran out of guesses.\nIt took you #{time_start} minutes and #{time_end} seconds to fail.\nGo take a walk and try again."
    end 

end 


