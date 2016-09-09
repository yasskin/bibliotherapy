class AilmentsController < ApplicationController

  def new
    @topic = Topic.find(params[:topic_id])
    @ailment = @topic.ailments.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @ailment = @topic.ailments.new(ailment_params)
    if @ailment.save
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
      redirect_to topic_path(@ailment.topic)
    else
      render :edit
    end
  end

  def destroy
    @ailment= Ailment.find(params[:id])
    @ailment.destroy
    redirect_to topic_path(@ailment.topic)
  end

private
  def ailment_params
    params.require(:ailment).permit(:description)
  end

end
