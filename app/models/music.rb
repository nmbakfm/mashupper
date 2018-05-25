# == Schema Information
#
# Table name: musics
#
#  id                   :bigint(8)        not null, primary key
#  artwork_id           :bigint(8)
#  title                :string
#  usage                :integer
#  beginning_margin_sec :float
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Music < ApplicationRecord
  belongs_to :artwork
end
