class TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @topic = Topic.new
    respond_to do |format|
      format.html { render :new }
      format.js
    end
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      flash[:notice] = "Topic successfully added!"
      redirect_to topics_path
    else
      render :new
    end
  end

  def edit
    @topic = Topic.find(params[:id])
    respond_to do |format|
      format.html { render :edit }
      format.js
    end
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update(topic_params)
      flash[:notice] = "Topic successfully updated!"
      redirect_to topics_path
    else
      render :edit
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    flash[:notice] = "Topic successfully deleted!"
    redirect_to topics_path
  end

private
  def topic_params
    params.require(:topic).permit(:name)
  end

end
