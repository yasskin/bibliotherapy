 class CuresController < ApplicationController

   def new
     @topic = Topic.find(params[:topic_id])
     @cure = @topic.ailment.cures.new
   end

   def create
     @topic = Topic.find(params[:topic_id])
     @cure = @topic.ailment.cures.new(cure_params)
     if @cure.save
       flash[:notice] = "Cure successfully created!"
       redirect_to topic_ailment_path(@cure.ailment.topic)
     else
       render :new
     end
   end

 end
