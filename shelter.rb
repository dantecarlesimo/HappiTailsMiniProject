class Shelter

	attr_accessor :shelter_name, :address, :pets, :clients, :animals

	def initialize(shelter_name,address)
		@shelter_name=shelter_name
		@address=address
		@clients={}
		@animals={}
	end

	def to_s
		return "#{@shelter_name} shelter at #{@address} has #{@pets.length} animals and #{@clients.length} people"
	end

	def display_animals
		animalData=[]
		@animals.each{|name, data| animalData.push(data.to_s)}
		puts animalData.join("\n")
	end

	def display_clients
		clientData=[]
		@clients.each {|name, data| clientData.push(data.to_s)}
			puts clientData.join("\n")
	end

	def adopt(client_name,animal_name)
		@clients[client_name].pets[animal_name]=@animals[animal_name]
		@animals.delete(animal_name)
	end	

	def return(client_name,animal_name)
		@animals[animal_name]=@clients[client_name].pets[animal_name]
		@clients[client_name].pets.delete(animal_name)
	end

end


	










# require 'spec_helper'

# describe Shelter do

#   before :each do
#     @shelter = Shelter.new('HappiTails', '10 East 21st Street')
#   end

#   describe "#new" do
#     it "takes two parameters and returns a Shelter object" do
#       expect(@shelter).to be_an_instance_of(Shelter)
#     end
#   end

#   describe ".to_s" do
#     it "prints the Shelter object's attributes in a sentence" do
#       expect(@shelter.to_s).to match("HappiTails shelter at 10 East 21st Street has 0 animals and 0 people")
#     end
#   end

#   describe ".display_animals" do
#     it "prints the Shelter's Animals" do
#     end
#   end

#   describe ".display_clients" do
#     it "prints the Shelter object's Clients" do
#       client = Clients.new("Beth", 30, "female", 3)
#       @shelter.clients[client.name.to_sym] = client
#       expect(@shelter.display_clients).to match("Beth is a 30 year old female with 3 kids and 0 pets")
#     end
#   end

#   describe ".adopt" do
#     it "takes an Animal object from a Client and adds it to the shelter" do
#     end
#   end

