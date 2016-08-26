class Hero	

	attr_accessor :name, :power, :bio
	@@all = []

	def initialize(hero_attr)
		@name, @power, @bio = hero_attr[:name], hero_attr[:power], hero_attr[:bio]
		@@all << self
	end

	def self.all
		@@all
	end

	def self.clear
		@@all.clear
	end

end