require 'pry'
class School
   attr_reader :name
   attr_accessor :roster 

   def initialize(roster)
      @roster = {}
   end

   def add_student(student_name, grade)
      self.roster[grade] = [] unless self.roster.has_key?(grade)
      self.roster[grade] << student_name
   end

   def grade(grade)
      self.roster[grade]
   end

   def sort
      self.roster.map do |grade, student_array|
         student_array.sort!
      end
      roster
   end
end
