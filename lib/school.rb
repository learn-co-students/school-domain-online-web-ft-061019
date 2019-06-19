class School
  attr_reader :roster
  def initialize(school_name)
    @roster = {}
    @school_name = school_name 
  end 
  def roster
    @roster
    end 
    def add_student(student, grade)
      roster[grade] ||= []
      roster[grade] << student 
    end 
      def grade(grade)
      roster[grade]
    end
    def sort 
      @roster.each do |grade, student| 
        roster[grade] = student.sort! 
  end 
  roster
end 
  end 