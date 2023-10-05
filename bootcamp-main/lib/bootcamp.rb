class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |h, k| h[k] = [] }
  end

  def name
    @name 
  end

  def slogan
    @slogan 
  end

  def teachers
    @teachers 
  end

  def students
    @students 
  end

  def hire(teacher)
    @teachers << teacher 
  end

  def enroll(student)
    if students.length < @student_capacity
      @students << student 
      return true
    end 

    return false
  end

  def enrolled?(student)
    @students.include?(student)
  end

  def student_to_teacher_ratio
     return (@students.length / @teachers.length).to_i
  end

  def add_grade(student, grade)
     if enrolled?(student)
       @grades[student] << grade
       return true
     else
      return false
     end
  end

  def num_grades(student)
    return @grades[student].length
  end
    

  def average_grade(student)
    if @grades[student] == [] || !enrolled?(student)
      return nil
    else 
      sum = @grades[student].sum
    avg = (sum / @grades[student].length).to_i
    avg
    end
  end



end


