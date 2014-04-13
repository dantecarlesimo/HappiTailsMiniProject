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


	









