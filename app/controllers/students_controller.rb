require_relative "../helpers/students_helpers.rb"
class StudentsController < ApplicationController
  before_action :set_student, only: :show
  helper StudentsHelper

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    set_student
    @student.update(active: !@student.active)
    redirect_to @student
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end
end