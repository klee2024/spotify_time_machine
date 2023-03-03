# == Schema Information
#
# Table name: tracks
#
#  id           :integer          not null, primary key
#  release_date :datetime
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  artist_id    :integer
#  playlist_id  :integer
#
class Track < ApplicationRecord
  has_many(:playlist_tracks, { :class_name => "PlaylistTrack", :foreign_key => "track_id", :dependent => :destroy })

  has_many(:playlists, { :through => :playlist_tracks, :source => :playlist })
end
