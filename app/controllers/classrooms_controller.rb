class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @classrooms = Classroom.all
    respond_with(@classrooms)
  end

  def show
    respond_with(@classroom)
  end

  def new
    @classroom = Classroom.new
    respond_with(@classroom)
  end

  def edit

  end

  def create
    @classroom = Classroom.new(classroom_params)
    @classroom.teacher_id = current_user.id
    @classroom.save
    respond_with(@classroom)
  end

  def update

    if current_user.id == @classroom.teacher_id
    @classroom.update(classroom_params)
    respond_with(@classroom)
    else

      redirect_to teacher_dashboard_path
    end
  end

  def destroy
    @classroom.destroy
    respond_with(@classroom)
  end

  private
    def set_classroom
      @classroom = Classroom.find(params[:id])
    end

    def classroom_params
      params.require(:classroom).permit(:class_name, :school_id, :teacher_id)
    end
end
