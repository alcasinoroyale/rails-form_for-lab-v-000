class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to student_paht(@student)
  end

  def show
  end

  def edit
  end

  def update
  end
end
