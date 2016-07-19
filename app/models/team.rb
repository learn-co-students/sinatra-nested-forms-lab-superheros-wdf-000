class Team
	attr_accessor :name , :motto, :heroes
	@@all = []
	def initialize(attribute)
		@heroes = []
		attribute.each do |k,v|
			self.send("#{k.to_s}=",v) 
		end
	end
	def self.all
		@@all
	end
end
