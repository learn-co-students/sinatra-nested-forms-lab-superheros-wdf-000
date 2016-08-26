class Team
	
	attr_accessor :name, :motto
	@@all = []

	def initialize(team_attr)
		@name, @motto = team_attr[:name], team_attr[:motto]
		@@all << self
	end

	def self.all
		@@all
	end

end