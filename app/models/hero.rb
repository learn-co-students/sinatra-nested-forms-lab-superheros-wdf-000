class Hero

    attr_accessor :name, :power, :bio

    HEROS =[]

    def initialize(hash)

      @name = hash[:name]
      @power = hash[:power]
      @bio = hash[:bio]

      HEROS << self
    end

    def self.all
      HEROS
    end



end
