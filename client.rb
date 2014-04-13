class Client

	attr_accessor :name, :num_children, :age, :gender, :pets

	def initialize (name, age, gender, num_children)
		@name=name
		@num_children=num_children
		@age=age
		@gender=gender
		@pets={}
	end

	def to_s
		return "#{@name} is a #{@age} year old #{@gender} with #{@num_children} kids and #{@pets.length} pets"
	end	

	def display_pets
		petStuff=[]
		@pets.each {|name, stuff| petStuff.push(stuff.to_s)}
			petStuff.join("\n")
		

	end

end

