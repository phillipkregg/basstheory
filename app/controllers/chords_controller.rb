class ChordsController < ApplicationController
  def index
    @chords = Chord.all;
  end
  
  def chord 
    @chord = Chord.first
    
    respond_to do |format|
      format.json { render :json => @chord }
    end
    
  end
  
  
  def chord_notes
    @chord = Chord.first
    
    @chord_notes = @chord.notes
    
    respond_to do |format|
      format.json { render :json => @chord_notes }
    end
    
  end
  
  
end
