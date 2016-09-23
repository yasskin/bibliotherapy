 class CuresController < ApplicationController

   def new
     @ailment = Ailment.find(params[:ailment_id])
     @cure = @ailment.cures.new
   end

   def create
     @ailment = Ailment.find(params[:ailment_id])
     @cure = @ailment.cures.new(cure_params)
     if @cure.save
       flash[:notice] = "Cure successfully created!"
       redirect_to ailment_path(@cure.ailment)
     else
       render :new
     end
   end

private
  def cure_params
    params.require(:cure).permit(:symptom, :headline, :therapy, :author, :book_title, :book_cover, :ailment_id)
  end

 end
