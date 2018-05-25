# == Schema Information
#
# Table name: keys
#
#  id         :bigint(8)        not null, primary key
#  music_id   :bigint(8)
#  tonica     :string
#  key        :integer
#  bar        :integer
#  beat       :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Key < ApplicationRecord
end
