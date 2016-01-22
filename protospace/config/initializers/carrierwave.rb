# CarrierWave.configure do |config|
#   config.fog_credentials = {
#     :provider               => 'AWS',
#     :aws_access_key_id      => Settigs.carrierwave[:key_id],
#     :aws_secret_access_key  => Settigs.carrierwave[:access_key],
#     :region                 => Settigs.carrierwave[:region]
#   }
#   config.fog_directory = Settings.carrierwave[:bucket] if Rails.env.development?
# end
