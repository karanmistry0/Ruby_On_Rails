class StudentsController < ApplicationController

  before_action :set_student,only: %i[show edit update destroy]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student, notice: 'Student details was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to student_path(@student), notice: 'Student details has been updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path , notice: 'Student has been Deleted successfully.'
  end


  private

  def student_params
    params.require(:student).permit(:name,:email,:age,:permanent_contact_number,:date_of_birth,:local_address,:permanent_address,:alternate_contact_number)
  end

  def set_student
    @student = Student.find(params[:id])
  end

end
