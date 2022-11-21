class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end


  def grades
    # byebug 
    students = Student.order(:name, grade: :desc)
    render json: students
  end

  def highest_grade
    # byebug
    student = Student.order(grade: :desc).first
    render json: student
  end


end
