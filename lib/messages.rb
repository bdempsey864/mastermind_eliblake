require 'colorize'
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
        "I have generated a beginner sequence with four elements made up of: (r)ed,\n(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\nWhat's your guess?"

    end
# fix string interpolation
    def cheat
        "secret code is #{'secret_code'}"
    end

    def incorrect_length
        "please enter a valid code (4 characters)"
    end 

    def incorrect_color
        "please enter a correct color choice using (r)ed, (g)reen, (b)lue, (y)ellow"
    end 

    def guess_message
        "#{'guessed_sequence'} has 
        #{'number_of_correct_elements'} with #{'number_in_correct_position'} in the correct positions. You have taken #{'number_of_guesses'}. Please guess again:)"
    end

    def win_message
        "Congratulations! You guessed #{'secret_code'}, in #{'number_of_guesses'} over #{'total_time'}.  Would you like to (p)lay again, or (q)uit?"
    end

end 