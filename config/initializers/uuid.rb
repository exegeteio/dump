  # frozen_string_literal: true

  # config/initializers/uuid.rb
  Rails.application.config.generators do |g|
    g.orm :active_record, primary_key_type: :uuid
  end
