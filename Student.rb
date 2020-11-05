#Shane Byrne
# DAT210
#Student a class to gather data

class Student
 
     attr_accessor :name
 
     attr_accessor :letterGrade, :numGrade
       
 
     # Class initializer takes the students first and last name
 
     def initialize(name)  
 
         @name = name   
         @grades = Array.new
 
     end
     
     # Calculates the students average grade based on all scores
 
     def calcAverage
 
         sum = 0
   
         # Make sure we don't have a denominator of 0, we sum up all 
 
         # grades and divide by number of grades to get average
 
         if @grades.size > 0
 
             @grades.each { |g| sum += g } 
 
             @numGrade = sum / @grades.size
 
         else
 
             @numGrade = 0
 
         end
 
            
         # Now that we populated @numGrade, we find the letter grade and put it in @letterGrade
 
         setLetterGrade
 
     end
   
     # Add the grade to the grades array of integers
 
     def addGrade(score)
 
         # If score is an integer or float, put it in the grades array and calculate the average
 
         if score.is_a?(Integer) || score.is_a?(Float)
 
             @grades.push(score)
 
             calcAverage
 
         end
 
     end
 
      
 
     # Translates average score into a letter grade equivalent
 
     def setLetterGrade
 
         if @numGrade >= 90.0
 
             @letterGrade = "A"
 
         elsif @numGrade >= 80.0
 
             @letterGrade = "B"
 
         elsif @numGrade >= 70.0
 
             @letterGrade = "C"
 
         elsif @numGrade >= 60.0
 
             @letterGrade = "D"
 
         else
 
             @letterGrade = "F"
 
         end
 
 
     end
 
 end
 
 # Find the average of the entire class of students. (Average of averages)
 
 def findClassAverage(studentsArray)
 
     classSum = 0.0
 
     studentsArray.each { |student| classSum += student.numGrade }
 
     if studentsArray.size > 0
 
         return classSum / studentsArray.size
 
     end
 
      
 
     return 0
 
 end