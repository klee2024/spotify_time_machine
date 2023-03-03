# == Schema Information
#
# Table name: playlist_tracks
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  playlist_id :integer
#  track_id    :integer
#
class PlaylistTrack < ApplicationRecord
  belongs_to(:playlist, { :required => true, :class_name => "Playlist", :foreign_key => "playlist_id" })

  belongs_to(:track, { :required => true, :class_name => "Track", :foreign_key => "track_id" })
end
