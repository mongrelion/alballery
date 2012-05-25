require 'spec_helper'

describe Album do
  # - Relationships - #
  it { should belong_to :user }

  # - Validations - #
  it { should validate_presence_of :user_id  }
  it { should validate_numericality_of :year }

  [:title, :artist, :year].each do |attribute|
    it { should validate_presence_of attribute }
  end

  [:title, :artist, :year, :cover, :cover_cache].each do |attribute|
    it { should allow_mass_assignment_of attribute }
  end

  # - Instance Methods - #
  it 'should know when a user is its owner' do
    chuck = Fabricate(:user)
    john  = Fabricate(:user)
    album = Fabricate(:album, :user => john)
    album.owner?(john).should be_true
    album.owner?(chuck).should be_false
  end
end
