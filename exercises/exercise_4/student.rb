class Student
  attr_accessor :name, :grades
  def initialize(name)
    @name = name
    @grades = []
  end
  def add_grade(grade)
    @grades << grade
  end
  def average_grade
    @grades.sum / @grades.size
  end
  def letter_grade
    if average_grade >= 90
      "A"
    elsif average_grade >= 80
      "B"
    elsif average_grade >= 70
      "C"
    elsif average_grade >= 60
      "D"
    else
      "F"
    end
  end
end