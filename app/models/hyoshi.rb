# == Schema Information
#
# Table name: hyoshis
#
#  id          :bigint(8)        not null, primary key
#  music_id    :bigint(8)
#  denominator :integer
#  numerator   :integer
#  bar         :integer
#  beat        :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Hyoshi < ApplicationRecord
  belongs_to :music
end
