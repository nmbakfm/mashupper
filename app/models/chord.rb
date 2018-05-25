# == Schema Information
#
# Table name: chords
#
#  id               :bigint(8)        not null, primary key
#  music_id         :bigint(8)
#  chord_name       :string
#  primary_category :string
#  root             :string
#  bar              :integer
#  beat             :float
#  harmony_func     :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Chord < ApplicationRecord
  belongs_to :music
end
