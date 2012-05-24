class Album < ActiveRecord::Base
  # - Accessible Attributes - #
  attr_accessible :artist, :title, :year

  # - Relationships - #
  belongs_to :user

  # - Validations - #
  validates_presence_of :title, :artist, :year, :user_id
  validates_numericality_of :year, :greater_than => 0
end
