# == Schema Information
#
# Table name: artwork_musics
#
#  id         :bigint(8)        not null, primary key
#  artwork_id :bigint(8)
#  music_id   :bigint(8)
#  usage      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArtworkMusic < ApplicationRecord
  belongs_to :artwork
  belongs_to :music

  enum usage: {melody: 10, accompaniment: 20}
end
