# == Schema Information
#
# Table name: musics
#
#  id                   :bigint(8)        not null, primary key
#  user_id              :bigint(8)
#  title                :string
#  beginning_margin_sec :float
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Music < ApplicationRecord
  belongs_to :user, optional: true
  has_many :chords
  has_many :bpms
  has_many :hyoshis
  has_many :phrases
  has_many :keys

  accepts_nested_attributes_for :chords
  accepts_nested_attributes_for :bpms
  accepts_nested_attributes_for :hyoshis
  accepts_nested_attributes_for :phrases
  accepts_nested_attributes_for :keys

  def self.build_by_hash hash
    new(
      title: hash["title"],
      beginning_margin_sec: hash["beginning_margin_sec"],
      chords_attributes: hash["chords"],
      bpms_attributes: hash["bpms"],
      hyoshis_attributes: hash["hyoshis"],
      phrases_attributes: hash["phrases"],
      keys_attributes: hash["keys"]
    )
  end
end
