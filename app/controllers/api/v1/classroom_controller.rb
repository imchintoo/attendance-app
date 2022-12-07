class Api::V1::ClassroomController < ApplicationController
  # GET /classrooms
  def index
    @classroom = Classroom.all
    render json:@classroom
  end
end
