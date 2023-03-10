# == Schema Information
#
# Table name: tracks
#
#  id           :integer          not null, primary key
#  artist       :string
#  release_date :datetime
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  playlist_id  :integer
#
class Track < ApplicationRecord
  has_many(:playlist_tracks, { :class_name => "PlaylistTrack", :foreign_key => "track_id", :dependent => :destroy })

  has_many(:playlists, { :through => :playlist_tracks, :source => :playlist })
end
