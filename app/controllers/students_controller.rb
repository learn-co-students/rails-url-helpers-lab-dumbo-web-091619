class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    #we cal the set_student private method to load the student with given id
    set_student
    #now updatet he 'active' attribute of that student
    @student.update(active: !@student.active)
    #finally send to that students show rendering to display student with updated attributes
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end