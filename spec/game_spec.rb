require './lib/messages'
require './lib/game'
require 'rspec'

RSpec.describe 'game' do
    it 'is a game' do
        game = Game.new

        expect(game).to be_a(Game)
    end 

    it 'starts' do
        game = Game.new
        
        
        expect(game.start).to eq(puts @message.game_intro)
    end

end
