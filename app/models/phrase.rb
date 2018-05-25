# == Schema Information
#
# Table name: phrases
#
#  id         :bigint(8)        not null, primary key
#  music_id   :bigint(8)
#  bar        :integer
#  beat       :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Phrase < ApplicationRecord
  belongs_to :music
end
