require 'rspec' 
require './lib/code'

RSpec.describe 'code' do 
    it 'is a code' do 
        code = Code.new

        expect(code).to be_a(Code)
    end 

    it 'makes a code' do
        code = Code.new
        code.make_secret_code

        expect(code.secret_code.length).to eq(4)
        
    end

end 