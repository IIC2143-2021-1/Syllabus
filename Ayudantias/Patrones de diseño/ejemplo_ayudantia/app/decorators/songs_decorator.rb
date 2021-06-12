class SongsDecorator < SimpleDelegator

  def rating
    "⭐️" * song.rating.to_i
  end

  def song
    __getobj__
  end
end