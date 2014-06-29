class ScalesController < ApplicationController
  
  
  def index
    @scales = Scale.all
    
    respond_to do |format|
      format.html
      format.json { render :json => @scales }
    end
    
  end
  
  
  def scale 
    @scale = Scale.first
    
    respond_to do |format|
      format.html
      format.json { render :json => @scale }
     
    end      
  end
  
  def scale_notes 
    @scale = Scale.first
    @scale_notes = @scale.notes
    
    respond_to do |format|
      format.json { render :json => @scale_notes }
    end
    
    
  end
  
  
  
end
