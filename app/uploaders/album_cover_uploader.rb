# encoding: utf-8

class AlbumCoverUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include Sprockets::Helpers::RailsHelper
  include Sprockets::Helpers::IsolatedHelper

  def store_dir
    "uploads/album-covers"
  end

  def default_url
    asset_path 'music.png'
  end

  version :thumb do
    process :resize_to_fill => [128, 128]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def filename
    @name ||= "#{secure_token}.#{file.extension}" if original_filename.present?
  end

  protected
    def secure_token
      model.cover_secure_token or model.cover_secure_token = SecureRandom.hex(15)
    end
end
