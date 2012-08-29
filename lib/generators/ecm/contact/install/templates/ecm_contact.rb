Ecm::Contact.configure do |config|
  # Configure your contact requiest recipients here.
  #
  # You can specify multiple recipients and multiple environments.
  config.recipients = {
    :development => %w( info@development.example.com ),
    :test        => %w( info@test.example.com ),
    :production  => %w( info@production.example.com )
  }
end
