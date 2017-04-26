CarrierWave.configure do |config|
  if !Rails.env.test?
    config.fog_credentials = {
      provider: "AWS",
      aws_access_key_id: ENV["AWS_S3_ACCESS_KEY"],
      aws_secret_access_key: ENV["AWS_S3_SECRET_KEY"]
    }
    config.fog_directory  = ENV["S3_BUCKET"]
  end
end
