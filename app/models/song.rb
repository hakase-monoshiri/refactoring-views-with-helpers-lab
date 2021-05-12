class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist
      self.artist.name 
    else 
      "Unknown Artist"
    end
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by(name: artist_name)
  end
end
