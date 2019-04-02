# frozen_string_literal: true

# Configure Taggun here.
# This file is filled with defaults.
Taggun.configure do |config|
  # Your Api-Key is required.
  # You can get one from taggun.io

  config.api_key = 'your_api_key'


  # Set true to avoid saving the receipt in storage.
  # config.incognito = true

  # Set true to force re-process image transcription if the receipt is already in storage
  # config.refresh = false
end
