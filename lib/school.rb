require 'pry'

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def name
    @name
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
      end
    # @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
    @roster
  end
end
