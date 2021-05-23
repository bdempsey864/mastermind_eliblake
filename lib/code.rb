class Code
    attr_reader :secret_code, 
                :available_colors

    def initialize
        @available_colors = ['r', 'b', 'g', 'y']
        @secret_code = []
    end 

    def make_secret_code
        4.times do
            @secret_code << @available_colors.sample
        end 
    end
end

