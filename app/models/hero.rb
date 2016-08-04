class Hero
	attr_accessor :name , :power, :bio, :team
	@@all = []
	def initialize(name,power,bio)
		@name = name
		@power = power
		@bio = bio
	end
	def self.all
		@@all
	end
end
