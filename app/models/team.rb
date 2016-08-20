class Team

    attr_accessor :name, :motto, :heros

    def initialize(hash)

      @name = hash[:name]
      @motto = hash[:motto]

      @heros = hash[:hero]
    end




end
