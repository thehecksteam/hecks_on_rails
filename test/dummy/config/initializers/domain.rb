require 'hecks-adapters/dynamodb'

Domain = HecksApp::ApplicationPort
Domain.config do
  domain  SoccerSeason
  adapter :Dynamodb
end
