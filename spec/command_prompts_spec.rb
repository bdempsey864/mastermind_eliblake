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
end