class Album < ActiveRecord::Base
  # - Accessible Attributes - #
  attr_accessible :artist, :title, :year, :cover

  # - Relationships - #
  belongs_to :user

  # - Validations - #
  validates_presence_of :title, :artist, :year, :user_id
  validates_numericality_of :year, :greater_than => 0

  # - CarrierWave - #
  mount_uploader :cover, AlbumCoverUploader
end
