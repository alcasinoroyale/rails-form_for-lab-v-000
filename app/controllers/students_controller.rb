class StudentController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(post_params(:first_name, :last_name))
    @student.save
    redirect to student_paht(@student)
  end

  def show
  end

  def edit
  end

  def update
  end
end
