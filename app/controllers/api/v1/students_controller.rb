class Api::V1::StudentsController < ApplicationController
  # GET /classroom/:classroom_id/students
  def show
    @students = Student.where(classroom_id: params[:classroom_id])
    render json:@students
  end

  # GET /classroom/:classroom_id/students/:id
  def show_student
    @student = Student.find(params[:id])
    render json:@student
  end
end
