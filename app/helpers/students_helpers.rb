module StudentsHelper
  def isActive(student)
    if student.active 
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end
end