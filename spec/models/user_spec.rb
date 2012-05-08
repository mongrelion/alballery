require 'spec_helper'

describe User do
  # - Validations - #
  %w[email password].each do |attribute|
    it { should validate_presence_of attribute }
  end

  %w[email password password_confirmation remember_me].each do |attribute|
    it { should allow_mass_assignment_of attribute }
  end
end
