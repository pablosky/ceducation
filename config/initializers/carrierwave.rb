CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAI54BV32SFMZKDZHQ',                        # required
    :aws_secret_access_key  => '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',                        # required
    :region                 => 'us-west-2',                 # optional, defaults to 'us-east-1'
    :host                   => 'riF7WT4DU6bJnHKgPAVO5bzRSY/DeFuumxSllUQZswwExyqEukuStOa69EbilmZrr75VJotCTAc=',             # optional, defaults to nil
    :endpoint               => 'http://s3.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'rapidsounds'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>"max-age=#{365.day.to_i}"} # optional, defaults to {}
end