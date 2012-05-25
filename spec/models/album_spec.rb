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

  [:title, :artist, :year, :cover].each do |attribute|
    it { should allow_mass_assignment_of attribute }
  end
end
