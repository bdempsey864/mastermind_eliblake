require "rspec"
require "./lib/player"
require "./lib/code"

RSpec.describe 'player' do
    it 'is a player' do
        player = Player.new

        expect(player).to be_a(Player)
    end

    it 'has the right number in correct position' do
        player = Player.new
        code = Code.new
        code.secret_code = ["y", "y", "y", "y"]
        guessed_code = ["y", "y", "y", "b"]

        # expect(player.number_in_correct_position(@code.secret_code)).to eq(3)
    end
end

