# == Schema Information
#
# Table name: bpms
#
#  id         :bigint(8)        not null, primary key
#  music_id   :bigint(8)
#  bpm        :float
#  bar        :integer
#  beat       :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bpm < ApplicationRecord
  belongs_to :music
end
