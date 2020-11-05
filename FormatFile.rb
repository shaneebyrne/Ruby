#Shane Byrne
# DAT210

#Wk 4 - Write a Ruby Program [due Mon]
#Assignment Content

#The college IT department manager no longer wants to use spreadsheets to calculate grades. The manager has asked you to create a program that will input the teachers' files and output the students' grades.  

#Write a Ruby program named formatfile.rb, which can be run by typing ruby widgets.rb. 

#In your Ruby environment, the program must read an input file formatted in CSV format, named input.csv. Each record contains data about a student and their corresponding grades. 

#The data will look similar to the following: 

#Student Name, assignment1, assignment 2, assignment 3, assignment 4 

#John Adams, 90, 91, 99, 98

#Paul Newman, 90, 92, 93, 94

#Mary Smith, 95, 96, 99

#Be careful to follow the output format exactly, including spacing. The output of your program must look like the following: 

#Student      Assignment Average

#John Adams    94.5 

#Compress your files into a ZIP folder. 

#Review the readings for this week from Ruby on Rails Tutorial if you have additional questions on deploying Ruby applications. 

#Submit the ZIP file.

#                              Refrences
#   I.) Everything You Need To Know About Ruby Constants
#       https://www.rubyguides.com/2017/07/ruby-constants/
#   II.) Clone the 2048 Game Board Using Two Dimensional Arrays in Ruby
#       Michael Morin - https://www.thoughtco.com/two-dimensional-arrays-in-ruby-2907737  
#   III.) Nested Arrays Ruby
#         https://learn.co/lessons/nested-arrays-ruby
#   IV.) How To Read & Parse Csv Files With Ruby
#        https://www.rubyguides.com/2018/10/parse-csv-ruby/
#   V.) A Beginner's Guide To Ruby Getters and Setters
#       https://metova.com/a-beginners-guide-to-ruby-getters-and-setters/
#   VI.) Getting User Input
#        https://ruby-doc.org/docs/ruby-doc-bundle/Tutorial/part_02/user_input.html
#   VII.) Ruby 2.6.3
#         https://ruby-doc.org/core-2.6.3/
#   
#

require 'csv', 'Student'
class FormatFile
  
  attr_accessor :student, :table, :firstName, :lastName
   
  
  def add()
    enteredName = true
    enteredScore = true
    
    while  enteredName == false
      puts "Enter name: "
      name = gets
      @array = [gets]
      while enteredScore == false
        puts "Enter score: "
        
        input = gets.chomp
        @student = Student.new(input)
          while input.to_i <= 0 || !is_integer?(input) #Check for number
            input = gets.chomp!
            @student.addScore(input)
          end
      
         @array = [gets + 1]
         puts "Any more scores?  enter N for No "
         entry = gets
         unless entry == 'n' || entry == 'N'
            enteredScore = false
            end
         puts "Any more students? enter N for no"
      
        continue = gets
        unless continue == 'n' || continue == 'N'
          enteredName = false
          end
        @array = [gets + 1]
    end
 end 
  
  
  def readfile()
    table = CSV.parse("Input.csv", headers: true)
  end
  
  def CSV.unparse array
     CSV.generate do |csv|
       array.each { |i| csv << i }
     end
  def loadfile(array)
         CSV.open("input.csv", "w") do |csv|
         csv << @array.to_s[]
     end
  end