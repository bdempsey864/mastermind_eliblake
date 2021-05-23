require 'colorize'
require './code'
require './player'

class Message

    def game_intro 
        "Would you like to (p)play, (r)read the instructions, or (q)quit?"
    end

    def intro_bad_choice
        "That is not a valid choice. Please choose (p)play, (r)read the instructions, or (q)quit"
    end

    def play_message
        "I have generated a beginner sequence with four elements made up of:" + " " + "(r)ed".red + ", " + "(g)reen".green + ", " + "(b)lue".blue + ", " + "(y)ellow".yellow + ". Use (q) to quit at any time to end the game. What’s your guess?"
    end

    def quit_message
        "Thanks for playing!"
    end

    def instructions
        "I have generated a beginner sequence with four elements made up of:" + " " + "(r)ed".red + "\n, " + "(g)reen".green + ", " + "(b)lue".blue + ", " + "(y)ellow".yellow + ". You must guess the sequence using a four character code. You will be given 10 guesses to guess the correct code. Use (q) to quit at any time to end the game.\n What’s your guess?"

    end
# fix string interpolation
    def cheat(secret_code)
        "secret code is #{secret_code}"
    end

    def incorrect_length
        "please enter a valid code (4 characters)"
    end 

    def incorrect_color
        "please enter a correct color choice using (r)ed, (g)reen, (b)lue, (y)ellow"
    end 

    def guess_message(player_guess, amount_correct, amount_correct_position, guess_count)
      #  require "pry"; binding.pry
        "#{player_guess} has #{amount_correct} colors correct with #{amount_correct_position} in the correct positions. You have taken #{guess_count} guess. Please guess again:)"
    end

    def win_message
        "Congratulations! You guessed #{'secret_code'}, in #{'number_of_guesses'} over #{'total_time'}.  Would you like to (p)lay again, or (q)uit?"
    end

    def too_many_guesses
        "Unfortunately you have ran out of guesses. Go take a walk and try again."
    end 

end 



