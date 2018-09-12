class StudentController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(post_params(:first_name, :last_name))
  end

  def show
  end

  def edit
  end

  def update
  end
end
