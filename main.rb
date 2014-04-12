require 'pry'
#require 'rainbow'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'
require_relative 'data'

puts "*"*80
puts "Welcome to iAdpot"
puts "*"*80

puts "Select an option: (1)Display all Animals  (2)Display all Clients  (3)Create new Animal  (4)Create new Client  (5)Adopt an Animal  (6)Return an Animal  (Q)To Quit :"
response = gets.chomp.downcase
while response != 'q'


	case response 
	when "1"
		$shelter.display_animals
		
	when "2"
		$shelter.display_clients

	when "3"
		puts"What is the animal's name?"
		name=gets.chomp
		puts"What is the animal's age?" 
		age=gets.chomp
		puts"What is the animal's gender?"
		gender=gets.chomp
		puts"What is the animal's species?"
		species=gets.chomp
		new_animal=Animal.new(name, age, gender, species)
		$shelter.animals[new_animal.name] = new_animal
		

	when "4"
		puts"What is the Client's name?"
		name=gets.chomp
		puts"What is the Client's age?"
		age=gets.chomp
		puts"What is the Client's gender?"
		gender=gets.chomp
		puts"How many children does the Client have?"
		num_children=gets.chomp
		new_client=Client.new(name, age, gender, num_children)
		$shelter.clients[new_client.name] = new_client

	when "5"
		puts "What is your name?"
		client_name=gets.chomp
		puts "Thank you. Here are the Animals at the Shelter:"
		$shelter.display_animals
		puts "Please type the name of the Animal you want to adopt:"
		animal_name=gets.chomp
		$shelter.clients[client_name].pets[animal_name]=$shelter.animals[animal_name]
		$shelter.animals.delete(animal_name)
	

	when "6"
		puts "We are sad to hear that it didn't work out with your adopted pet. What is your name?"
		client_name=gets.chomp
		puts "What is the name of the pet you are returning?"
		animal_name=gets.chomp
		$shelter.animals[animal_name]=$shelter.clients[client_name].pets[animal_name]
		$shelter.clients[client_name].pets.delete(animal_name)
	end
    
puts "Select an option: (1)Display all Animals  (2)Display all Clients  (3)Create new Animal  (4)Create new Client  (5)Adopt an Animal  (6)Return an Animal  (Q)To Quit :"
response = gets.chomp.downcase
	
end	

