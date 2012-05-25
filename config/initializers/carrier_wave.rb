if Rails.env.test? or Rails.env.cucumber?
  CarrierWave.configure do |config|
    config.storage           = :file
    config.enable_processing = false
  end
end

if Rails.env.development? or Rails.env.production?
  CarrierWave.configure do |config|
    if ENV['STORAGE'].nil?
    end

    case ENV['STORAGE']
    when 'FILE'
      config.storage = :file
    when 'S3'
      config.storage = :fog
      config.fog_credentials = {
        :provider              => 'AWS',
        :aws_access_key_id     => ENV['S3_ACCESS_KEY_ID'],
        :aws_secret_access_key => ENV['S3_SECRET_ACCESS_KEY'],
        :region                => ENV['S3_REGION']
      }
      config.fog_directory = ENV['S3_BUCKET']
      config.fog_host      = "https://s3.amazonaws.com/#{config.fog_directory}"
    else
      ENV['STORAGE'] = 'FILE'
      Rails.logger.warn 'Storage provided is not valid or was not provided at all. Falling back to default storage (file).'
    end
  end
end
