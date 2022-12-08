class Api::V1::ClassroomController < ApplicationController
  # GET /classrooms
  def index
    @classrooms = Classroom.all
    render json:@classrooms
  end

  # GET /classroom/:id
  def show
    @classroom = Classroom.find(params[:id])
    render json:@classroom
  end

  # POST /classroom
  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      render json:@classroom
    else
      render error: {error: 'Unable to create classroom'}, status: 400
    end
  end

  # PUT /classroom/:id
  def update
    @classroom = Classroom.find(params[:id])
    if @classroom
      @classroom.update(classroom_params)
      render json: {message: 'Classroom successfully updated'}, status: 200
    else
      render error: {error: 'Unable to update the classroom info !'}, status: 404
    end
  end

  # DELETE /classroom/:id
  def destroy
    @classroom = Classroom.find(params[:id])
    if @classroom
      @classroom.destroy
      render json: {message: 'Classroom deleted successfully'}, status: 200
    else
      render error: {error: 'Unable to delete the classroom'}, status: 404
    end
  end

  private
  def classroom_params
    params.require(:classroom).permit(:name)
  end
end
