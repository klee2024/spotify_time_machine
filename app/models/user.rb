# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  access_token    :string
#  email           :string
#  password_digest :string
#  refresh_token   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  spotify_user_id :string
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:playlists, { :class_name => "Playlist", :foreign_key => "user_id", :dependent => :destroy })
end
