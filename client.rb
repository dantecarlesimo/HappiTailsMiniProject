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



# require 'spec_helper'

# describe Client do

#   before :each do
#     @client = Client.new('Beth', 30, 'female', 3)
#   end

#   describe "#new" do
#     it "takes four parameters and returns a Client object" do
#       expect(@client).to be_an_instance_of(Client)
#     end
#   end

#   describe ".to_s" do
#     it "prints the Client object's attributes in a sentence" do
#       expect(@client.to_s).to eql("Beth is a 30 year old female with 3 kids and 0 pets")
#     end
#   end

#   describe ".display_pets" do
#     it "prints names of the Client object's pets" do
#       tiny = Animal.new("Tiny", 3, "male", "cat")
#       franz = Animal.new("Franz", 5, "male", "cat")
#       @client.pets[tiny.name.to_sym] = tiny
#       @client.pets[franz.name.to_sym] = franz
#       expect(@client.display_pets).to match("Tiny is a 3 year old male cat that loves \nFranz is a 5 year old male cat that loves ")
#     end
#   end

# end
