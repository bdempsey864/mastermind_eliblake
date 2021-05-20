class Prompts 
    def game_intro 
        p "Welcome to Mastermind - would you like to (p)lay, (r)ead the instructions, or (q)uit?"
    end

    def intro_bad_choice
        p "That is not a valid choice. Please choose (p)play, (r)ead the instructions, or (q)uit"
    end

    def play_prompts
        p "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, (y)ellow. Use (q) to quit at any time to end the game. What’s your guess?"
    end

    def quit_confirm
        p "Ya sure?"
    end

    def instructions
        p "The computer has selected a      secret combination of 4 colors and you have to guess that combination in 10 or fewer tries to win.

        To create your guess, choose a combination of (r)ed, (g)reen, (b)lue, (y)ellow. **You can do doubles or triples** 

        For each guess you will be told how many correct colors and correct spots are in your guess. You are not told which color(s) are correct and what spot(s) are correct."

    end
# fix string interpolation
    def cheat
        p "secret code is #{'secret_code'}"
    end

    def incorrect_length
        p "please enter a valid code (4 characters)"
    end 

    def incorrect_color
        p "please enter a correct color choice using (r)ed, (g)reen, (b)lue, (y)ellow"
    end 

    def guess_prompt
        p "#{'guessed_sequence'} has 
        #{'number_of_correct_elements'} with #{'number_in_correct_position'} in the correct positions. You have taken #{'number_of_guesses'}. Please guess again:)"
    end

    def win_prompt
        p "Congratulations! You guessed #{'secret_code'}, in #{'number_of_guesses'} over #{'total_time'}.  Would you like to (p)lay again, or (q)uit?"
    end

end 