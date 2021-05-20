require './lib/messages'

class Game 
    def initialize
        @message = Message.new
    end

    def start
        puts @message.game_intro
        
    end

end