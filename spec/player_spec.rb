require "rspec"
require "./lib/player"

RSpec.describe 'player' do 
    it 'is a player' do
        player = Player.new

        expect(player).to be_a(Player)
    end 
end

array = [1,2,3,4]
array.map do |num|
    num * 2
end
=> array