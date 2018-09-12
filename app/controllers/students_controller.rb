class StudentController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(post_params(:first_name, :last_name))
    @student.save
    redirect_to student_paht(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
  end

private

  def post_params
    params.require(:post).permit(*args)
  end
end
