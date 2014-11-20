class PlanificationsController < ApplicationController
  before_action :set_planification, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @planifications = Planification.all
    respond_with(@planifications)
  end

  def show
    respond_with(@planification)
  end

  def new
    @planification = Planification.new
    respond_with(@planification)
  end

  def edit
  end

  def create
    @planification = Planification.new(planification_params)
    @planification.save
    respond_with(@planification)
  end

  def update
    @planification.update(planification_params)
    respond_with(@planification)
  end

  def destroy
    @planification.destroy
    respond_with(@planification)
  end

  private
    def set_planification
      @planification = Planification.find(params[:id])
    end

    def planification_params
      params.require(:planification).permit(:user_id, :program_id, :subject, :teach_time, :classroom_id, :obj_fund_vert, :obj_fund_transv, :contents, :expect_learn, :activ)
    end
end
