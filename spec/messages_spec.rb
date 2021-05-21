require 'rspec'
require './lib/messages'

RSpec.describe do
    it 'exists' do
      message = Message.new
      
      expect(message).to be_an_instance_of(Message)
    end

    it 'has an intro' do
        message = Message.new
         
        expect(message.game_intro).to eq("Would you like to (p)play, (r)read the instructions, or (q)quit?")
    end

    it 'has a bad intro choice' do
        message = Message.new

        expect(message.intro_bad_choice).to eq("That is not a valid choice. Please choose (p)play, (r)read the instructions, or (q)quit")
    end

    it 'message to play' do
        message = Message.new

        expect(message.play_message).to eq("I have generated a beginner sequence with four elements made up of:" + " " + "(r)ed".red + ", " + "(g)reen".green + ", " + "(b)lue".blue + ", " + "(y)ellow".yellow + ". Use (q) to quit at any time to end the game. What’s your guess?")
    end

    it 'quit message' do
        message = Message.new

        expect(message.quit_message).to eq("Thanks for playing!")
    end

    it 'has instructions' do
        message = Message.new

        expect(message.instructions).to eq("I have generated a beginner sequence with four elements made up of: (r)ed,\n(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\nWhat's your guess?")
        
    end 

    it 'has a cheat' do
        message = Message.new
# fix string interpolation
        expect(message.cheat).to eq("secret code is #{'secret_code'}")
    end 

    it 'has 4 characters' do
        message = Message.new

        expect(message.incorrect_length).to eq("please enter a valid code (4 characters)")
    end 

    it 'has a color choice' do
        message = Message.new

        expect(message.incorrect_color).to eq("please enter a correct color choice using (r)ed, (g)reen, (b)lue, (y)ellow")
    end

    it 'can guess' do #takes arguments
        message = Message.new

        expect(message.guess_message).to eq("#{'guessed_sequence'} has 
        #{'number_of_correct_elements'} with #{'number_in_correct_position'} in the correct positions. You have taken #{'number_of_guesses'}. Please guess again:)")
    end 

    it 'it can win' do
        message = Message.new

        expect(message.win_message).to eq("Congratulations! You guessed #{'secret_code'}, in #{'number_of_guesses'} over #{'total_time'}.  Would you like to (p)lay again, or (q)uit?")
    end 

end