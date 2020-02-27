
class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    puts params
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    if @student.save
      redirect_to student_path(@student.id)
    else
      redirect_to new_student_path
    end
  end

end
