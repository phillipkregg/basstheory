class HomeController < ApplicationController
  def index
    @scale = Scale.first
    @scale_notes = @scale.notes
    @chord = Chord.first
    @chord_notes = @chord.notes
    
    respond_to do |format|
      format.html
      format.json { render :json => {
        :scale => @scale,
        :scale_notes => @scale_notes,
        :chord => @chord,
        :chord_notes => @chord_notes
        }}
    end
    
    def scale
       @scale = Scale.first
    end
    
    def scale_notes
      @scale_notes
    end
    
    
  end
end
