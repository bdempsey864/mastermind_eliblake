require 'rspec'
require './lib/messages'
require './lib/code'

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

        expect(message.intro_bad_choice).to eq("That is not a valid choice.\nPlease choose (p)play, (r)read the instructions, or (q)quit")
    end

    it 'continues game' do
        message = Message.new
        
        expect(message.continue_message).to eq("Please enter a code to continue")
    end

    it 'plays game' do
        message = Message.new

        expect(message.play_message).to eq("I have generated a beginner sequence with four elements made up of:\n" + "(r)ed".red + ", " + "(g)reen".green + ", " + "(b)lue".blue + ", " + "(y)ellow".yellow + ".\nUse (q) to quit at any time to end the game.\nWhat’s your guess?")
    end

    it 'quit message' do
        message = Message.new

        expect(message.quit_message).to eq("Thanks for playing!".cyan)
    end

    it 'has instructions' do
        message = Message.new

        expect(message.instructions).to eq(" I have generated a beginner sequence with four elements made up of:\n" + " " + "(r)ed".red + ", " + "(g)reen".green + ", " + "(b)lue".blue + ", " + "(y)ellow".yellow + ".\n You must guess the sequence using a four character code.\n You will be given 10 lives to guess the correct code.\n")  
    end 

    it 'has a cheat' do
        message = Message.new
        secret_code = ["y", "y", "y", "y"]

        expect(message.cheat(secret_code)).to eq("secret code is " + "#{secret_code}")
    end 

    it 'has a color choice' do
        message = Message.new

        expect(message.incorrect_color).to eq("Please enter a correct color choice using:\n" + "(r)ed".red + ", " + "(g)reen".green + ", " + "(b)lue".blue + ", " + "(y)ellow".yellow + ".\nUse (q) to quit at any time to end the game.\nWhat’s your guess?")
    end

    it 'can guess' do 
        message = Message.new
        player_guess = ["y", "y", "y", "y"]
        amount_correct = 4
        amount_correct_position = 4
        guess_count = 3

        expect(message.guess_message(player_guess, amount_correct, amount_correct_position, guess_count)).to eq("#{player_guess}".magenta + " has #{amount_correct} colors correct with #{amount_correct_position} in the correct positions.\nYou have #{guess_count} lives left.\nPlease guess again:)")
    end 

    it 'it can win' do
        message = Message.new
        secret_code = ["y", "y", "y", "y"]
        number_of_guesses = 4
        time_start = 0
        time_end = 1

        expect(message.win_message(secret_code, number_of_guesses, time_start, time_end)).to eq("Congratulations!\nYou guessed" + " " + "#{secret_code}".blue + ", with #{number_of_guesses} lives left to live.\nYou played for #{time_start} minutes and #{time_end} seconds.")
    end 

    it 'ends game' do
        message = Message.new
        minutes = 1
        seconds = 2
        
        expect(message.game_over(minutes, seconds)).to eq("Unfortunately you have ran out of lives.\nIt took you #{minutes} minutes and #{seconds} seconds to fail.\nGo take a walk and try again.")
    end

end