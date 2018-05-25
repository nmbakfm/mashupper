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

  attr_accessor :chord_type
  attr_accessor :tension

  before_validation do
    self.primary_category = self.get_primary_category
    self.root = self.get_root
    self.harmony_func = self.get_harmony_func
  end

  def get_root
    _root = chord_name.split('/')[1]
    return _root if _root.present?
    chord_name.match(/\A[A-G][\#b]?/)[0]
  end

  def get_primary_category
    chord_type = chord_name.gsub(/\A[A-G][\#b]?/, '')
    return 'm' if chord_type[0] == 'm'
    return 'dim' if chord_type[0..2] == 'dim'
    return 'aug' if chord_type[0..2] == 'aug'
    return 'M'
  end

  def get_harmony_func
    # TODO: 和声機能を判定する
    return 'T'
  end
end
