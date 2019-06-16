class School 

    attr_accessor :roster, :student_name, :school_name
    attr_reader :school_name
    
    def initialize(school_name)
        @school_name = school_name
        @roster = { }
    end 

    def roster
        @roster 
    end 

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else  
            @roster[grade] = [ ]
            @roster[grade] << student_name
        end 
    end 

    def grade(grade)
        @roster[grade]
    end 


    def sort
      roster.each do |grade, name|
        name.sort!
      end 
    end 
end 
