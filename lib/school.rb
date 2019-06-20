require 'pry'
class School
  attr_accessor :roster, :grade, :stundent 
  def initialize(name)
    @name = name
    @roster = {}
    end 
   def add_student(student, grade)
    if @roster.include?(grade)
      @roster[grade] << student 
    else 
      @roster[grade] = []
      @roster[grade] << student
    end 
    @roster
  end 
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each do |grade, student|
      student.sort!
    end
      
  end
end
