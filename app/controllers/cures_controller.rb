 class CuresController < ApplicationController

   def new
     @ailment = Ailment.find(params[:ailment_id])
     @cure = @ailment.cures.new
     respond_to do |format|
       format.html { render :new }
       format.js
     end
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

   def edit
     @ailment = Ailment.find(params[:ailment_id])
     @cure = Cure.find(params[:id])
     respond_to do |format|
       format.html { render :edit }
       format.js
     end
   end

   def update
     @ailment = Ailment.find(params[:ailment_id])
     @cure = Cure.find(params[:id])
     if @cure.update(cure_params)
       flash[:notice] = "Cure successfully updated!"
       redirect_to ailment_path(@cure.ailment)
     else
       render :edit
     end
   end

   def destroy
     @cure = Cure.find(params[:id])
     @cure.destroy
     flash[:notice] = "Cure successfully deleted"
     redirect_to ailment_path(@cure.ailment)
   end

private
  def cure_params
    params.require(:cure).permit(:url, :headline, :therapy, :author, :book_title, :book_cover, :ailment_id)
  end

 end
