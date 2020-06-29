class Review

    @@all = []
    
    def initialize()
        
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end
end
