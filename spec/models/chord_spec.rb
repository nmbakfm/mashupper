# == Schema Information
#
# Table name: artworks
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Chord, type: :model do
  describe 'get_primary_category' do
    before do
      @chord = Chord.new(bar: 0, beat: 0)
    end
    it "chord_nameがC7のときMがかえること" do
      @chord.chord_name = "C7"
      expect(@chord.get_primary_category).to eq('M')
    end
    it "chord_nameがDm7のときmがかえること" do
      @chord.chord_name = "Dm"
      expect(@chord.get_primary_category).to eq('m')
    end
    it "chord_nameがEdim7のときdimがかえること" do
      @chord.chord_name = "Edim7"
      expect(@chord.get_primary_category).to eq('dim')
    end
    it "chord_nameがF#augのときaugがかえること" do
      @chord.chord_name = "F#aug"
      expect(@chord.get_primary_category).to eq('aug')
    end
  end

  describe 'get_root' do
    before do
      @chord = Chord.new(bar: 0, beat: 0)
    end
    it "chord_nameがC7のときCがかえること" do
      @chord.chord_name = "C7"
      expect(@chord.get_root).to eq('C')
    end
    it "chord_nameがDm7/GのときGがかえること" do
      @chord.chord_name = "Dm7/G"
      expect(@chord.get_root).to eq('G')
    end
    it "chord_nameがEdim7のときEがかえること" do
      @chord.chord_name = "Edim7"
      expect(@chord.get_root).to eq('E')
    end
    it "chord_nameがF#augのときF#がかえること" do
      @chord.chord_name = "F#aug"
      expect(@chord.get_root).to eq('F#')
    end
  end

  describe 'get_harmony_func' do
        pending("TODO: 和声機能のフィールドを埋める")
  end
end
