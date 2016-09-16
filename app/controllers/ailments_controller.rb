class AilmentsController < ApplicationController

  def index
    @ailments = Ailment.all
  end

  def show
    @ailment = Ailment.find(params[:id])
    @cure = Cure.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @ailment = @topic.ailments.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @ailment = @topic.ailments.new(ailment_params)
    if @ailment.save
      flash[:notice] = "Ailment successfully created!"
      redirect_to topic_path(@ailment.topic)
    else
      render :new
    end
  end

  def edit
    @topic = Topic.find(params[:topic_id])
    @ailment = Ailment.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:topic_id])
    @ailment = Ailment.find(params[:id])
    if @ailment.update(ailment_params)
      flash[:notice] = "Ailment successfully updated!"
      redirect_to topic_path(@ailment.topic)
    else
      render :edit
    end
  end

  def destroy
    @ailment= Ailment.find(params[:id])
    @ailment.destroy
    flash[:notice] = "Ailment successfully deleted!"
    redirect_to topic_path(@ailment.topic)
  end

private
  def ailment_params
    params.require(:ailment).permit(:description)
  end

end
