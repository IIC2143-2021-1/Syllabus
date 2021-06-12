class SongObserver < ActiveRecord::Observer
  def after_update(song)
    if song.saved_change_to_rating?
      p " >>> Rating changed"
      
    end
  end
end