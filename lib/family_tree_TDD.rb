require 'active_record'
require 'person'

database_configuration = YAML::load(File.open('./db/config.yml'))
test_configuration = database_configuration["test"]
ActiveRecord::Base.establish_connection(test_configuration)

def welcome
  puts "Hello!  Let's Create Your Family Tree."
  firstName
end

def firstName
  puts "What is your first name?"
  response = gets.chomp
  firstName = response
  puts "Hello " + firstName
  lastName
end
#
# def lastName
#   puts "What is your last name?"
#   response = gets.chomp
#   lastName = response
#   puts "Thanks, " firstName + lastName + "."
#   p1
# end

# def p1
#   puts "Let's get more information about your Mother."
#   puts "What is your mother's first name?"
#   momFirstName = gets.chomp
#   puts "What is her last name?"
#   momLastName = gets.chomp
#   momFirstName + momLastName = p1
#   puts "Great!  Thanks " + "firstName" + " lastName."
#   p2
# end
#
#   def p2
#     puts "Now it's time to find out more about your Father."
#     puts "What's your father's first name?"
#     dadFirstName = gets.chomp
#     puts "What is his last name?"
#     dadLastName =  gets.chomp
#     puts "Thanks again."
#     puts "So now we know that your Mom and Dad are " + p1 + p2 "."
