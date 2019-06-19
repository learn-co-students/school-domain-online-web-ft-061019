require 'pry'
class School
    attr_reader :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= [] # If left roster[grade] is false or nil create [] as value
        roster[grade] << student
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.each do |key, students|
            students.sort!
        end
    end
end