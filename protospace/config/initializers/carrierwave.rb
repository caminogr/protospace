CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => Settigs.local.carrierwave[:key_id],
    :aws_secret_access_key  => Settigs.local.carrierwave[:access_key],
    :region                 => Settigs.local.carrierwave[:region]
  }
  config.fog_directory = 'amino-bucket' if Rails.env.development?
end
