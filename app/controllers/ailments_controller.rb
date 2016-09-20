class AilmentsController < ApplicationController

  def index
    @ailments = Ailment.all
  end

  def show
    @ailment = Ailment.find(params[:id])
    @cures = @ailment.cures
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @ailment = @topic.ailments.new
    respond_to do |format|
      format.html { render :new }
      format.js
    end
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
    respond_to do |format|
      format.html { render :edit }
      format.js
    end
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
