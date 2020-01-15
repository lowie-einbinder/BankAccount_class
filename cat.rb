# Exercise 2: The Cat's Meow
# Since we're working toward the goal of building apps for the web, we may as well start with the one thing that the web wouldn't exist without: cats!

# In this exercise, we're going to create a Cat class so we can populate our software with a menagerie of feline friends.

# Start a new project (create a new subfolder) and add a new file called "cat.rb". Run your program and commit your work after each step.

# Create a class called Cat
# Every cat should have three attributes when they're created: name, preferred_food and meal_time
# Since we want these fields to be set for every Cat, you'll need to add an initialize method to your class
# You can use irb to test out your class by loading your class into the console using the load method (i.e. load 'cat.rb') and then creating new instances of your class.
# Create two instances of the Cat class in your file
# They should each have unique names, preferred foods and meal times
# Let's assume meal_time is an integer from 0 to 23
# Add an instance method called eats_at that returns the hour of the day with AM or PM that this cat eats.
# The return value should be something like "11 AM" or "3 PM"
# Add another instance method called meow that returns a string of the cat telling you all about itself
# The return value should be something like "My name is Sparkles and I eat tuna at 11 AM"
# Call the meow method on each of the cats you instantiated in Step 3
# Use puts to have the program output the result to the terminal
# Once you're done, commit again!

class Cat

    def initialize(name, food, time)
        @name = name
        @preferred_food = food
        @meal_time = time
    end

def eats_at
    if @meal_time > 12
        return "#{@meal_time - 12} PM"
    else
        return "#{@meal_time} AM"
    end
end

def meow
    return "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
end
end

gato = Cat.new("elvis", "fish", 20)
ruby = Cat.new("ruby", "chicken", 7)

p ruby.eats_at 
p gato.eats_at
 puts ruby.meow
 puts gato.meow
