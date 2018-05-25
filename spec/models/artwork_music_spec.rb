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

require 'rails_helper'

RSpec.describe ArtworkMusic, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
