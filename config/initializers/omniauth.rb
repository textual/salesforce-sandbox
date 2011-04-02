require 'forcedotcom'

# Set the default hostname for omniauth to send callbacks to.
# seems to be a bug in omniauth that it drops the httpS
# this still exists in 0.2.0
OmniAuth.config.full_host = 'https://localhost:3000'

module OmniAuth
  module Strategies
    #tell omniauth to load our strategy
    autoload :Forcedotcom, 'lib/forcedotcom'
  end
end


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :forcedotcom, '3MVG9y6x0357Hlecpwu46X5x7Yqpyl.e2DYTuGIui5D_R3JP_sgsjVNch5RY0tnScZ_yv_ghyH4CK84P7hTNd', '8378960969571031701'
end
