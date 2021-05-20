require 'rspec'
require './lib/command_prompts'

RSpec.describe do
    it 'exists' do
      prompts = Prompts.new
      
      expect(prompts).to be_an_instance_of(Prompts)
    end

    it 'has an intro' do
        prompts = Prompts.new
         
        expect(prompts.game_intro).to eq("Welcome to Mastermind - would you like to (p)lay, (r)ead the instructions, or (q)uit?")
    end

    it 'has a bad intro choice' do
        prompts = Prompts.new

        expect(prompts.intro_bad_choice).to eq("That is not a valid choice. Please choose (p)play, (r)ead the instructions, or (q)uit")
    end

    it 'prompts to play' do
        prompts = Prompts.new

        expect(prompts.play_prompts).to eq("I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, (y)ellow. Use (q) to quit at any time to end the game. What’s your guess?")
    end

    it 'confirms quit' do
        prompts = Prompts.new

        expect(prompts.quit_confirm).to eq("Ya sure?")
    end

    it 'has instructions' do
        prompts = Prompts.new

        expect(prompts.instructions).to eq("The computer has selected a      secret combination of 4 colors and you have to guess that combination in 10 or fewer tries to win.

        To create your guess, choose a combination of (r)ed, (g)reen, (b)lue, (y)ellow. **You can do doubles or triples** 

        For each guess you will be told how many correct colors and correct spots are in your guess. You are not told which color(s) are correct and what spot(s) are correct.")
        
    end 

    it 'has a cheat' do
        prompts = Prompts.new
# fix string interpolation
        expect(prompts.cheat).to eq("secret code is #{'secret_code'}")
    end 

    it 'has 4 characters' do
        prompts = Prompts.new

        expect(prompts.incorrect_length).to eq("please enter a valid code (4 characters)")
    end 

    it 'has a color choice' do
        prompts = Prompts.new

        expect(prompts.incorrect_color).to eq("please enter a correct color choice using (r)ed, (g)reen, (b)lue, (y)ellow")
    end

    it 'can guess' do
        prompts = Prompts.new

        expect(prompts.guess_prompt).to eq("#{'guessed_sequence'} has 
        #{'number_of_correct_elements'} with #{'number_in_correct_position'} in the correct positions. You have taken #{'number_of_guesses'}. Please guess again:)")
    end 

    it 'it can win' do
        prompts = Prompts.new

        expect(prompts.win_prompt).to eq("Congratulations! You guessed #{'secret_code'}, in #{'number_of_guesses'} over #{'total_time'}.  Would you like to (p)lay again, or (q)uit?")
    end 

end