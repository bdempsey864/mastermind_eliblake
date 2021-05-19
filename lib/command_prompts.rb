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
end 